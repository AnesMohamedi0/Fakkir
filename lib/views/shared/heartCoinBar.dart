import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/views/shared/playerViews.dart';
import 'package:provider/provider.dart';

class HeartCoinBar extends StatelessWidget {
  const HeartCoinBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.05,
      child: Container(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<PlayerProvider>(
              builder: (context, provider, child) {
                return HeartsContainer(hearts: provider.getHearts());
              },
            ),
            Consumer<PlayerProvider>(
              builder: (context, provider, child) {
                return CoinsContainer(coins: provider.getCoins());
              },
            ),
          ],
        ),
      ),
    );
  }
}
