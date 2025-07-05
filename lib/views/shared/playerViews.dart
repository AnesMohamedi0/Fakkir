import 'dart:async';

import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/popUps/heartPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class HeartsContainer extends StatelessWidget {
  final int hearts;
  const HeartsContainer({super.key, required this.hearts});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => HeartPopUp());
      },
      child: Container(
        height: height * 0.02,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.only(right: width * 0.02, left: width * 0.021),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: List.generate(
                hearts == 5 ? 0 : 4 - hearts,
                (index) => Container(
                  margin: EdgeInsets.only(right: width * 0.001),
                  child: Container(
                    padding: EdgeInsets.all(height * 0.0009),
                    child: Image.asset('assets/images/icons/heartempty.png'),
                  ),
                ),
              ),
            ),
            if (hearts != 5)
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: height * 0.002,
                    child: HeartTimerText(
                      size: height * 0.009,
                      weight: FontWeight.w500,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(height * 0.0009),
                      child: Image.asset('assets/images/icons/heartempty.png'),
                    ),
                  ),
                ],
              ),
            Row(
              children: List.generate(
                hearts,
                (index) => Container(
                  margin: EdgeInsets.only(right: width * 0.001),
                  child: Container(
                    padding: EdgeInsets.all(height * 0.0009),
                    child: Image.asset('assets/images/icons/heart.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoinsContainer extends StatelessWidget {
  final int coins;
  const CoinsContainer({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.02,
      width: coins > 999 ? width * 0.17 : width * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(right: width * 0.004),
      padding: EdgeInsets.only(right: width * 0.02, left: width * 0.021),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(height * 0.0009),
            child: Image.asset('assets/images/icons/coin.png'),
          ),

          Positioned(
            top: height * -0.0034,
            right: width * 0.05,
            child: NumbersText(
              text: coins.toString(),
              size: height * 0.017,
              color: colorTextDark,
              weight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class HeartTimerText extends StatefulWidget {
  final double size;
  final FontWeight weight;
  final Color color;
  const HeartTimerText({
    super.key,
    required this.size,
    required this.weight,
    this.color = const Color.fromARGB(255, 117, 17, 9),
  });

  @override
  State<HeartTimerText> createState() => _HeartTimerTextState();
}

class _HeartTimerTextState extends State<HeartTimerText> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Update every second
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final seconds = context.watch<PlayerProvider>().secondsRemaining();
    return NumbersText(
      text: seconds.toString(),
      size: widget.size,
      weight: widget.weight,
      color: widget.color,
    );
  }
}
