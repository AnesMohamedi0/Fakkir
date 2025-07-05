import 'package:flutter/material.dart';
import 'package:general_knowledge_app/models/MapAsset.dart';
import 'package:general_knowledge_app/providers/assetsProvider.dart';
import 'package:provider/provider.dart';

class AssetsDisplay extends StatefulWidget {
  const AssetsDisplay({super.key});

  @override
  State<AssetsDisplay> createState() => _AssetsDisplayState();
}

class _AssetsDisplayState extends State<AssetsDisplay> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<AssetsProvider>(
      builder: (context, provider, _) {
        return Stack(
          children: List.generate(provider.getAssetsLength(), (index) {
            MapAsset asset = provider.getAssetByIndex(index);
            final position = provider.getAssetPositionByIndex(index);
            double dx = position?.x ?? 0;
            double dy = position?.y ?? 0;

            double x = dx / 100 * width * 0.8 + width * 0.04;
            double y = dy / 100 * height * 0.61 + height * 0.19;
            return Positioned(
              top: y - height * 0.003,
              left: x - height * 0.03,
              child: Image.asset(
                asset.assetPath,
                height: height * 0.135,
                fit: BoxFit.fitHeight,
              ),
            );
          }),
        );
      },
    );
  }
}
