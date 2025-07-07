// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/quiz/stickingProvider.dart';
import 'package:general_knowledge_app/views/quiz/QuizPages/sticking.dart';
import 'package:general_knowledge_app/views/quiz/quiz.dart';
import 'package:general_knowledge_app/database/levelRepo.dart';
import 'package:general_knowledge_app/database/quizRepo.dart';
import 'package:general_knowledge_app/models/map.dart';
import 'package:general_knowledge_app/models/quiz/quiz.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/providers/quiz/completeProvider.dart';
import 'package:general_knowledge_app/providers/quiz/intervalProvider.dart';
import 'package:general_knowledge_app/providers/quiz/matchingProvider.dart';
import 'package:general_knowledge_app/providers/quiz/optionsProvider.dart';
import 'package:general_knowledge_app/providers/quiz/orderingProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/map/levelIconsDisplay.dart';
import 'package:general_knowledge_app/views/map/levelNodeBackGround.dart';
import 'package:general_knowledge_app/views/shared/popUps/MapDonePopUp.dart';
import 'package:provider/provider.dart';

class LevelsDisplay extends StatefulWidget {
  final int mapId;
  const LevelsDisplay({super.key, required this.mapId});

  @override
  State<LevelsDisplay> createState() => _LevelsDisplayState();
}

class _LevelsDisplayState extends State<LevelsDisplay> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Consumer<MapProvider>(
      builder: (context, provider, _) {
        return Stack(
          children:
              provider.getMapById(widget.mapId).levels.map<Widget>((item) {
                double x = item.posX / 100 * width * 0.8 + width * 0.04;
                double y = item.posY / 100 * height * 0.61 + height * 0.19;
                return Positioned(
                  top: y - height * 0.003,
                  left: x - height * 0.003,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      LevelNodeBackground(item: item),

                      if (!item.isOpen || item.isDone)
                        LevelIconsDisplay(item: item),

                      if (item == provider.getMapById(widget.mapId).levels[9])
                        LastLevelAsset(),

                      TextButton(
                        onPressed:
                            (item!.isOpen)
                                ? () async {
                                  Quiz? quiz = await QuizRepository()
                                      .getQuizByLevelId(item.id);
                                  if (quiz != null) {
                                    context.read<QuizProvider>().setQuiz(quiz);
                                  } else {
                                    return;
                                  }

                                  final bool? result =
                                      await Navigator.push<bool>(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder:
                                              (_, __, ___) => QuizPage(),
                                          transitionsBuilder: (
                                            _,
                                            animation,
                                            __,
                                            child,
                                          ) {
                                            return FadeTransition(
                                              opacity: animation,
                                              child: child,
                                            );
                                          },
                                        ),
                                      );

                                  // Clear states
                                  context.read<QuizProvider>().clearQuiz();
                                  context.read<IntervalProvider>().clear();
                                  context.read<CompleteProvider>().clear();
                                  context.read<OrderingProvider>().clear();
                                  context.read<MatchingProvider>().clear();
                                  context.read<OptionsProvider>().clear();
                                  context.read<StickingProvider>().clear();

                                  if (result == null) {
                                    return;
                                  }

                                  if (result == true && !item.isDone) {
                                    LevelRepository levelRepository =
                                        LevelRepository();

                                    GameMap map = provider.getMapById(
                                      widget.mapId,
                                    );
                                    map.incrementProgress();
                                    context.read<MapProvider>().updateMap(map);

                                    context
                                        .read<MapProvider>()
                                        .setLevelDoneById(item.id);

                                    var levels = await levelRepository
                                        .getAllLevelsForMapId(widget.mapId);
                                    for (var element in levels) {
                                      if (item.id == element.levelBeforeId) {
                                        context
                                            .read<MapProvider>()
                                            .setLevelOpenById(element.id);
                                        break;
                                      }
                                    }

                                    if (item ==
                                        provider
                                            .getMapById(widget.mapId)
                                            .levels[9]) {
                                      context
                                          .read<MapProvider>()
                                          .setMapDoneById(widget.mapId);

                                      context.read<PlayerProvider>().addCoins(
                                        100,
                                      );

                                      for (GameMap element
                                          in context
                                              .read<MapProvider>()
                                              .getMaps()) {
                                        if (element.mapBeforeId ==
                                            widget.mapId) {
                                          context
                                              .read<MapProvider>()
                                              .setMapOpenById(element.id);
                                        }
                                      }

                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                            if (!mounted) return;
                                            showDialog(
                                              context: context,
                                              builder:
                                                  (context) => MapDonePopUp(
                                                    mapName:
                                                        provider
                                                            .getMapById(
                                                              widget.mapId,
                                                            )
                                                            .name,
                                                  ),
                                            );
                                          });
                                    }
                                  }
                                }
                                : null,
                        child: Container(
                          height: height * 0.042,
                          width: height * 0.042,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: height * 0.003,
                              color: const Color.fromARGB(0, 35, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        );
      },
    );
  }
}
