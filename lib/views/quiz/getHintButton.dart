import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/views/shared/popUps/usingCoinsPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class GetHintButton extends StatelessWidget {
  final provider;
  const GetHintButton({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return TextButton(
      onPressed:
          provider.hintUsed()
              ? null
              : () async {
                if (context.read<PlayerProvider>().getCoins() < 30) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("no suffisent coins")));

                  return;
                }

                bool? result = await showDialog(
                  context: context,
                  builder: (context) {
                    return UsingCoinsPopUp(
                      text: "استخدام 30 عملة للحصول على تلميح",
                    );
                  },
                );
                if (result == null || !result) {
                  return;
                }
                provider.getHint();
                context.read<PlayerProvider>().removeCoins(30);
              },
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * 0.32,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: height * 0.01),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:
                    provider.hintUsed()
                        ? [
                          const Color.fromARGB(50, 255, 196, 0),
                          const Color.fromARGB(30, 255, 170, 0),
                        ]
                        : [
                          Colors.amberAccent.shade400,
                          Colors.amberAccent.shade700,
                        ],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.amberAccent.shade700, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SubTitleText(
                  text: 'تلميح',
                  size: height * 0.022,
                  weight: FontWeight.w600,
                  align: TextAlign.center,
                  color:
                      provider.hintUsed()
                          ? Colors.amberAccent.shade700
                          : const Color.fromARGB(255, 255, 255, 255),
                ),
                Row(
                  children: [
                    Container(
                      height: height * 0.026,
                      width: height * 0.026,
                      padding: EdgeInsets.symmetric(horizontal: height * 0.001),

                      child: Image.asset('assets/images/icons/coin.png'),
                    ),
                    NumbersText(
                      text: '30',
                      size: height * 0.022,
                      align: TextAlign.center,
                      weight: FontWeight.w600,
                      color:
                          provider.hintUsed()
                              ? Colors.amberAccent.shade700
                              : const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
