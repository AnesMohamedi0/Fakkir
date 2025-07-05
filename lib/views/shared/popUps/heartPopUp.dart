import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/popUpPainter.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/playerViews.dart';
import 'package:general_knowledge_app/views/shared/popUps/usingCoinsPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class HeartPopUp extends StatefulWidget {
  const HeartPopUp({super.key});

  @override
  State<HeartPopUp> createState() => _HeartPopUpState();
}

class _HeartPopUpState extends State<HeartPopUp> {
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
              left: width * 0.25,
              top: height * -0.01,
              child: SizedBox(
                width: height * 0.18,
                height: height * 0.18,

                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/icons/heart.png"),
                    Consumer<PlayerProvider>(
                      builder: (context, provider, _) {
                        if (!provider.hasMaxHearts()) {
                          return HeartTimerText(
                            size: height * 0.07,
                            weight: FontWeight.w400,
                            color: Colors.white,
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: height * 0.19,
              child: SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Consumer<PlayerProvider>(
                      builder: (context, provider, _) {
                        return SizedBox(
                          height: height * 0.03,
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: List.generate(
                                  (5 - provider.getHearts()).toInt(),
                                  (index) => Container(
                                    margin: EdgeInsets.only(
                                      right: width * 0.001,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(height * 0.0009),
                                      child: Image.asset(
                                        'assets/images/icons/heartempty.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  provider.getHearts(),
                                  (index) => Container(
                                    margin: EdgeInsets.only(
                                      right: width * 0.001,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(height * 0.0009),
                                      child: Image.asset(
                                        'assets/images/icons/heart.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: height * 0.01),
                    Consumer<PlayerProvider>(
                      builder: (context, provider, _) {
                        if (provider.getHearts() == 0) {
                          return SubTitleText(
                            text: "لا يوجد قلوب",
                            size: height * 0.03,
                            weight: FontWeight.w500,
                          );
                        } else if (provider.hasMaxHearts()) {
                          return SubTitleText(
                            text: "القلوب ممتلئة",
                            size: height * 0.03,
                            weight: FontWeight.w500,
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                    SizedBox(height: height * 0.01),

                    Consumer<PlayerProvider>(
                      builder: (context, provider, _) {
                        if (provider.hasMaxHearts()) {
                          return Container();
                        }
                        return TextButton(
                          onPressed: () async {
                            bool? result = await showDialog(
                              context: context,
                              builder: (context) {
                                return UsingCoinsPopUp(
                                  text: "شراء قلب مقابل 15 عملة",
                                );
                              },
                            );

                            if (result == null || !result) return;
                            provider.buyHeart();
                          },
                          child: Container(
                            width: width * 0.42,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: height * 0.01,
                              vertical: height * 0.003,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.amberAccent.shade400,
                                  Colors.amberAccent.shade200,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.amberAccent.shade700,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: height * 0.035,
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      SizedBox(
                                        height: height * 0.03,
                                        width: height * 0.03,
                                        child: Image.asset(
                                          "assets/images/icons/heart.png",
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        child: Icon(
                                          Icons.add,
                                          color: colorText,
                                          size: height * 0.024,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SubTitleText(
                                  text: "مقابل",
                                  size: height * 0.02,
                                  weight: FontWeight.w500,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: height * 0.03,
                                      width: height * 0.03,
                                      child: Image.asset(
                                        "assets/images/icons/coin.png",
                                      ),
                                    ),
                                    NumbersText(
                                      text: '15',
                                      size: height * 0.02,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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
