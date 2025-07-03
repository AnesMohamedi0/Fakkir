import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class PlusCoins extends StatelessWidget {
  final int coins;

  const PlusCoins({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.26,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.036,
            width: height * 0.036,
            padding: EdgeInsets.symmetric(horizontal: height * 0.001),

            child: Image.asset('assets/images/icons/coin.png'),
          ),
          NumbersText(
            text: '$coins +',
            size: height * 0.032,
            align: TextAlign.center,
            weight: FontWeight.w600,
            color: Colors.amberAccent.shade100,
          ),
        ],
      ),
    );
  }
}

class MinusHeart extends StatelessWidget {
  const MinusHeart({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.036,
            width: height * 0.036,
            padding: EdgeInsets.symmetric(horizontal: height * 0.001),

            child: Image.asset('assets/images/icons/heart.png'),
          ),
          NumbersText(
            text: '-',
            size: height * 0.032,
            align: TextAlign.center,
            weight: FontWeight.w600,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
