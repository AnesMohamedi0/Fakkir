import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class MapNameDisplay extends StatelessWidget {
  final int mapId;
  const MapNameDisplay({super.key, required this.mapId});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Consumer<MapProvider>(
      builder: (context, provider, _) {
        final map = provider.getMapById(mapId);
        if (map == null) {
          return const SizedBox(); // or show a loader/message
        }
        return Positioned(
          top: height * 0.053,
          child: Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HudhudText(
                  text: map.name,
                  size: height * 0.038,
                  weight: FontWeight.w500,
                  color: colorTextDark,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
