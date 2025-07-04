import 'dart:math';

import 'package:flutter/material.dart';
import 'package:general_knowledge_app/database/mapRepo.dart';
import 'package:general_knowledge_app/main.dart';
import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/views/shared/animatedBackground.dart';
import 'package:general_knowledge_app/views/home/homeviews.dart';
import 'package:general_knowledge_app/views/shared/popUps/dailyCoinsPopUp.dart';
import 'package:general_knowledge_app/views/shared/heartCoinBar.dart';
import 'package:general_knowledge_app/views/shared/menuButton.dart';
import 'package:general_knowledge_app/views/shared/returnButton.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  int? currentMapId;
  HomePage({super.key, required this.currentMapId});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    updateMaps();
    _scrollController = ScrollController();
  }

  int? currentMapId;

  void updateMaps() async {
    await Provider.of<MapProvider>(context, listen: false).updateMaps();
    if (widget.currentMapId != null) {
      // Wait for the next frame to make sure ListView is built
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          (widget.currentMapId! - 3 < 0 ? 0 : widget.currentMapId! - 3) *
              MediaQuery.of(context).size.height *
              0.155,
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      final playerProvider = context.read<PlayerProvider>();
      if (playerProvider.getLastPlayed() != null &&
          playerProvider.getLastPlayed() !=
              '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}') {
        int coins = Random().nextInt(100) + 100;

        savePlayerData(
          coins:
              context.read<PlayerProvider>().player?.coins =
                  context.read<PlayerProvider>().player!.coins! + coins,
        );
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showDialog(
            context: context,
            builder: (context) => DailyCoinsPopUp(coins: coins),
          );
        });
      }
      playerProvider.setLastPlayed(DateTime.now());
      _initialized = true;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          AnimatedGradientBackground(),
          HeartCoinBar(),
          SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: height * 0.12),
                    Flexible(
                      child: Consumer<MapProvider>(
                        builder: (context, provider, child) {
                          return ListView.builder(
                            controller: _scrollController,
                            itemCount: provider.getMapsLength(),
                            itemBuilder: (context, index) {
                              GameMap? map = provider.getMapByIndex(index);
                              return MapsDisplay(map: map!);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),

                MenuButton(),
                ReturnButton(),
                Positioned(
                  top: height * 0.04,

                  child: Container(
                    width: width,
                    alignment: Alignment.center,
                    child: SubTitleText(
                      text: "قائمة الخرائط",
                      size: height * 0.030,
                      weight: FontWeight.w500,
                    ),
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
