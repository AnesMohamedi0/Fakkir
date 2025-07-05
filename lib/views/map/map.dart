import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/views/map/assetDisplay.dart';
import 'package:general_knowledge_app/views/map/backgroundPaint.dart';
import 'package:general_knowledge_app/views/map/mapName.dart';
import 'package:general_knowledge_app/views/map/pathDisplay.dart';
import 'package:general_knowledge_app/views/shared/animatedBackground.dart';
import 'package:general_knowledge_app/views/map/levelDisplay.dart';
import 'package:general_knowledge_app/views/shared/heartCoinBar.dart';
import 'package:general_knowledge_app/views/shared/menuButton.dart';
import 'package:general_knowledge_app/views/shared/returnButton.dart';
import 'package:provider/provider.dart';

class MapPage extends StatefulWidget {
  final int mapId;

  const MapPage({super.key, required this.mapId});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedGradientBackground(),

          SafeArea(
            child: Stack(
              children: [
                BackGroundPaint(),
                MapNameDisplay(mapId: widget.mapId),

                Consumer<MapProvider>(
                  builder: (context, provider, _) {
                    final map = provider.getMapById(widget.mapId);
                    if (map == null) {
                      return const SizedBox(); // or loading indicator
                    }
                    return Stack(
                      children: [
                        PathDisplay(paths: map.paths),
                        LevelsDisplay(mapId: map.id),
                      ],
                    );
                  },
                ),

                MenuButton(),
                ReturnButton(home: true),
              ],
            ),
          ),

          AssetsDisplay(),
          HeartCoinBar(),
        ],
      ),
    );
  }
}
