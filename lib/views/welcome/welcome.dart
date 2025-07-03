import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/views/home/homePage.dart';
import 'package:general_knowledge_app/main.dart';
import 'package:general_knowledge_app/painters/painters.dart';
import 'package:general_knowledge_app/views/shared/animatedBackground.dart';
import 'package:general_knowledge_app/views/shared/popUps/dailyCoinsPopUp.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

bool dailyCoins = false;

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double width = ScreenConfig.width(context);
    double height = ScreenConfig.height(context);

    return Scaffold(
      body: Stack(
        children: [
          AnimatedGradientBackground(),
          SafeArea(
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(width, height),
                  painter: TreasureMapBackground(),
                ),

                Positioned(
                  top: height * 0.15,
                  left: width * -0.24,
                  child: SizedBox(
                    height: height * 0.92,
                    child: Image.asset(
                      'assets/images/path.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.23),
                      TitleText(text: "فَكِّر"),
                      SubTitleText(
                        margin: 10,
                        text:
                            "لعبةٌ ثقافيةٌ، تعتمد على ثقافتك العامة لتجاوز المراحل المتنوعة، وخوض التحديات المشوّقة، لمحاولة الفوز بالكنز الثمين.",
                      ),
                      SizedBox(height: height * 0.06),
                      ButtonsHome(
                        text: "ابدأ التحدي",
                        onPressed: () async {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => HomePage(),
                              transitionsBuilder: (_, animation, __, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                      ),
                      ButtonsHome(text: 'تقييم تطبيق', onPressed: () {}),
                      ButtonsHome(
                        text: "تعرّف علينا",
                        onPressed: () async {
                          final dbPath = await getDatabasesPath();
                          final path = join(dbPath, 'my_database.db');
                          await deleteDatabase(path);
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.001,
                  right: width * 0.001,
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: height * 0.045,
                      color: Colors.black,
                      weight: 800,
                    ),
                    onPressed: () async {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
