import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class UsingCoinsPopUp extends StatefulWidget {
  final String text;
  const UsingCoinsPopUp({super.key, required this.text});

  @override
  State<UsingCoinsPopUp> createState() => _UsingCoinsPopUpState();
}

class _UsingCoinsPopUpState extends State<UsingCoinsPopUp> {
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
          alignment: Alignment.center,
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.98,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 255, 250, 230),
                    Colors.amberAccent.shade100,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            Positioned(
              top: height * 0.02,
              child: Container(
                alignment: Alignment.center,
                width: height * 0.14,
                height: height * 0.14,

                child: Image.asset("assets/images/icons/coin.png"),
              ),
            ),
            Positioned(
              top: height * 0.165,
              child: SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.7,
                      child: SubTitleText(
                        text: widget.text,
                        align: TextAlign.center,
                        size: height * 0.025,
                        weight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: Container(
                        width: width * 0.32,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.amberAccent.shade400,
                              Colors.amberAccent.shade700,
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
                            SubTitleText(
                              text: 'تأكيد',
                              size: height * 0.032,
                              weight: FontWeight.w600,
                              align: TextAlign.center,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ],
                        ),
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
