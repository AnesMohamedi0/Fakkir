import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/popUpPainter.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class LockedPopUp extends StatefulWidget {
  final String mapBefore;
  const LockedPopUp({Key? key, required this.mapBefore}) : super(key: key);

  @override
  State<LockedPopUp> createState() => _LockedPopUpState();
}

class _LockedPopUpState extends State<LockedPopUp> {
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
              left: width * 0.2,
              top: height * 0,
              child: SizedBox(
                width: height * 0.14,
                height: height * 0.14,

                child: Transform.rotate(
                  angle: -0.2,
                  child: Icon(
                    Icons.lock,
                    size: height * 0.185,
                    color: colorText,
                  ),
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
                    SubTitleText(
                      text: "الخريطة مقفلة",
                      size: height * 0.035,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(height: height * 0.015),
                    SizedBox(
                      width: width * 0.5,
                      child: SubTitleText(
                        align: TextAlign.center,
                        text: "لإلغاء قفل هذه الخريطة يجب عليك هزيمة: ",
                        size: height * 0.016,
                        weight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.5,
                      child: SubTitleText(
                        align: TextAlign.center,
                        text: widget.mapBefore,
                        size: height * 0.02,
                        weight: FontWeight.w500,
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
