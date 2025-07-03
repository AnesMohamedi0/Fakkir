import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/views/shared/popUps/usingCoinsPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class GetSolutionButton extends StatelessWidget {
  final provider;
  const GetSolutionButton({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return TextButton(
      onPressed:
          provider.solutionUsed()
              ? null
              : () async {
                if (context.read<PlayerProvider>().getCoins() < 100) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("no suffisent coins")));

                  return;
                }

                bool? result = await showDialog(
                  context: context,
                  builder: (context) {
                    return UsingCoinsPopUp(
                      text: "استخدام 100 عملة للحصول على الحل",
                    );
                  },
                );
                if (result == null || !result) {
                  return;
                }

                provider.getTheSolution();
                context.read<PlayerProvider>().removeCoins(100);
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
                    provider.solutionUsed()
                        ? [
                          const Color.fromARGB(50, 255, 162, 0),
                          const Color.fromARGB(30, 255, 111, 0),
                        ]
                        : [Colors.amber.shade700, Colors.amber.shade900],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.amber.shade900, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SubTitleText(
                  text: 'الحل',
                  size: height * 0.022,
                  weight: FontWeight.w600,
                  align: TextAlign.center,
                  color:
                      provider.solutionUsed()
                          ? Colors.amber.shade900
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
                      text: '100',
                      size: height * 0.022,
                      align: TextAlign.center,
                      weight: FontWeight.w600,
                      color:
                          provider.solutionUsed()
                              ? Colors.amber.shade900
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
