import 'dart:math';

import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/popUpPainter.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/views/shared/popUps/plusCoinsminusHeart.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class MapDonePopUp extends StatefulWidget {
  final String mapName;
  const MapDonePopUp({super.key, required this.mapName});

  @override
  State<MapDonePopUp> createState() => _MapDonePopUpState();
}

class _MapDonePopUpState extends State<MapDonePopUp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> wellDone = [
      "أحسنت",
      "عمل رائع",
      "ممتاز",
      "عمل جيد",
      "أداء ممتاز",
      "أحسنت صنعاً",
      "مذهل",
      "مبهر",
      "متميز",
      "أداء رائع",
      "تقدم رائع",
      "استمر هكذا",
    ];
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
                width: height * 0.20,
                height: height * 0.2,

                child: Image.asset('assets/images/icons/X.png'),
              ),
            ),

            Positioned(
              top: height * 0.36,
              right: width * 0.01,
              child: PlusCoins(coins: 100),
            ),

            Positioned(
              top: height * 0.175,
              child: SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SubTitleText(
                      text: "${wellDone[Random().nextInt(wellDone.length)]}!",
                      size: height * 0.035,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(height: height * 0.005),
                    SizedBox(
                      width: width * 0.5,
                      child: SubTitleText(
                        align: TextAlign.center,
                        text: "لقد أنهيت الخريطة: ",
                        size: height * 0.0225,
                        weight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.7,
                      child: SubTitleText(
                        align: TextAlign.center,
                        text: widget.mapName,
                        size: height * 0.0235,
                        weight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        await Provider.of<MapProvider>(
                          context,
                          listen: false,
                        ).updateMaps();
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: height * 0.038,
                            color: const Color.fromARGB(255, 44, 0, 0),
                          ),
                          SubTitleText(
                            align: TextAlign.center,
                            text: "قائمة الخرائط",
                            size: height * 0.015,
                            weight: FontWeight.w400,
                          ),
                        ],
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
