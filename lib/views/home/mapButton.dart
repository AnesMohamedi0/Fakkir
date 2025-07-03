import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/map/map.dart';
import 'package:general_knowledge_app/database/levelRepo.dart'
    show LevelRepository;
import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/seeders/pathseed.dart';
import 'package:general_knowledge_app/views/shared/popUps/lockedPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class MapButton extends StatelessWidget {
  final GameMap map;

  const MapButton({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.017,
      right: width * 0.12,
      child: Container(
        height: height * 0.12,
        child: TextButton(
          onPressed: () async {
            LevelRepository levelRepository = LevelRepository();

            if (!map.isOpen) {
              GameMap mapBefore =
                  context.read<MapProvider>().getMapById(map.mapBeforeId!)!;
              showDialog(
                context: context,
                builder: (context) => LockedPopUp(mapBefore: mapBefore.name),
              );
              return;
            }
            map.levels = await levelRepository.getAllLevelsForMapId(map.id);

            initPaths(map);

            context.read<MapProvider>().updateMap(map);

            await Navigator.push<bool>(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => MapPage(mapId: map.id),
                transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            );

            await context.read<MapProvider>().updateMaps();
          },
          child: MapNameText(text: map.name, size: height * 0.026),
        ),
      ),
    );
  }
}
