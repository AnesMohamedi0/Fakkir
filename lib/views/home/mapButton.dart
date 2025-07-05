import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/assetsProvider.dart';
import 'package:general_knowledge_app/views/map/map.dart';
import 'package:general_knowledge_app/database/levelRepo.dart'
    show LevelRepository;
import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/seeders/pathseed.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/popUps/lockedPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class MapButton extends StatefulWidget {
  final GameMap map;

  const MapButton({super.key, required this.map});

  @override
  State<MapButton> createState() => _MapButtonState();
}

class _MapButtonState extends State<MapButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.017,
      right: width * 0.105,
      child: Container(
        height: height * 0.12,
        child: TextButton(
          onPressed: () async {
            LevelRepository levelRepository = LevelRepository();

            if (!widget.map.isOpen) {
              GameMap mapBefore =
                  context.read<MapProvider>().getMapById(
                    widget.map.mapBeforeId!,
                  )!;
              showDialog(
                context: context,
                builder: (context) => LockedPopUp(mapBefore: mapBefore.name),
              );
              return;
            }

            widget.map.levels = await levelRepository.getAllLevelsForMapId(
              widget.map.id,
            );
            initPaths(widget.map);

            // Store the MapProvider reference before async operations
            final mapProvider = context.read<MapProvider>();
            context.read<AssetsProvider>().loadAssetsByMapId(widget.map.id);
            mapProvider.updateMap(widget.map);

            await Navigator.push<bool>(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => MapPage(mapId: widget.map.id),
                transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            );

            // Check if the widget is still mounted before using context
            if (mounted) {
              await mapProvider.updateMaps();
            }
          },
          child: MapNameText(
            text: widget.map.name,
            size: height * 0.026,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
