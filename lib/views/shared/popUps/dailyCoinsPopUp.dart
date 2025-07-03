import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/popUpPainter.dart';
import 'package:general_knowledge_app/views/shared/popUps/plusCoinsminusHeart.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class DailyCoinsPopUp extends StatefulWidget {
  final int coins;
  const DailyCoinsPopUp({super.key, required this.coins});

  @override
  State<DailyCoinsPopUp> createState() => _DailyCoinsPopUpState();
}

class _DailyCoinsPopUpState extends State<DailyCoinsPopUp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Dialog(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.zero,
      child: SizedBox(
        width: width * 0.95,
        height: width * 0.95,
        child: Stack(
          children: [
            Positioned.fill(child: CustomPaint(painter: PopUpPainter())),
            Positioned(
              left: width * 0.24,
              top: height * 0.005,
              child: SizedBox(
                width: height * 0.19,
                height: height * 0.19,

                child: Image.asset('assets/images/icons/coin.png'),
              ),
            ),

            Positioned(
              top: height * 0.36,
              right: width * 0.01,
              child: PlusCoins(coins: widget.coins),
            ),

            Positioned(
              top: height * 0.21,
              child: SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.6,
                      child: SubTitleText(
                        text: 'لقد حصلت على ${widget.coins} عملة يومية!',
                        size: height * 0.035,
                        color: Colors.black,
                        align: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
