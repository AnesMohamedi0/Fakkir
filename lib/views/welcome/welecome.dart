import 'package:flutter/material.dart';
import 'package:general_knowledge_app/database/mapRepo.dart';
import 'package:general_knowledge_app/painters/selectionpainter.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/views/home/homePage.dart';
import 'package:general_knowledge_app/views/shared/animatedBackground.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/menuButton.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

class WelecomePage extends StatefulWidget {
  const WelecomePage({super.key});

  @override
  State<WelecomePage> createState() => _WelecomePageState();
}

class _WelecomePageState extends State<WelecomePage> {
  // Move global variables to instance variables
  int? currentMapId;
  int max = 0;
  int mapDone = 0;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    try {
      // Run both operations concurrently
      await Future.wait([_getCurrentMap(), _initCount()]);

      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      // Handle errors gracefully
      print('Error initializing data: $e');
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  Future<void> _initCount() async {
    try {
      final doneCount = await MapRepository().getMapsDoneCount();
      final totalCount = await MapRepository().getMapsCount();

      if (mounted) {
        setState(() {
          mapDone = doneCount;
          max = totalCount;
        });
      }
    } catch (e) {
      print('Error getting map counts: $e');
    }
  }

  Future<void> _getCurrentMap() async {
    try {
      final mapId = await MapRepository().getTheCurrentMap();
      if (mounted) {
        setState(() {
          currentMapId = mapId;
        });
      }
    } catch (e) {
      print('Error getting current map: $e');
    }
  }

  Future<void> _refreshData() async {
    await _initializeData();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Show loading indicator while data is being fetched
    if (isLoading) {
      return Scaffold(
        body: Stack(
          children: [
            AnimatedGradientBackground(),
            Positioned(
              top: height * 0.4,
              child: Container(
                width: width,
                alignment: Alignment.center,
                child: SizedBox(
                  width: height * 0.6,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          AnimatedGradientBackground(),
          SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.58,
                  right: width * 0.1,
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.easeInOut,
                    builder: (context, value, child) {
                      return Opacity(opacity: value, child: child);
                    },
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomPaint(
                            size: Size(width * 1.2, height * 0.215),
                            painter: SelectionPainter(),
                          ),
                          Positioned(
                            top: height * 0.05,
                            left: width * 0.35,
                            child: TextButton(
                              onPressed: () async {
                                try {
                                  final dbPath = await getDatabasesPath();
                                  final path = join(dbPath, 'my_database.db');
                                  await deleteDatabase(path);
                                  // Optionally show a success message
                                  if (mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Database deleted successfully',
                                        ),
                                      ),
                                    );
                                  }
                                } catch (e) {
                                  print('Error deleting database: $e');
                                  if (mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Error deleting database',
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: OptionsText(
                                text: 'تحدي مفتوح',
                                color: colorText,
                                size: height * 0.05,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // 1. FADE IN TEXT at fixed position
                Positioned(
                  top: height * 0.42,
                  left: width * 0.1,
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.easeInOut,
                    builder: (context, value, child) {
                      return Opacity(opacity: value, child: child);
                    },
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomPaint(
                            size: Size(width * 1.2, height * 0.215),
                            painter: SelectionPainter(),
                          ),

                          Positioned(
                            top: height * 0.12,
                            left: width * 0.16,
                            child: SizedBox(
                              child: Row(
                                children: [
                                  SubTitleText(
                                    size: height * 0.02,
                                    weight: FontWeight.w500,
                                    text:
                                        currentMapId == null
                                            ? ""
                                            : context
                                                .read<MapProvider>()
                                                .getMapById(currentMapId!)
                                                .name,
                                    color: colorText,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: height * 0.05,
                            right: width * 0.32,
                            child: TextButton(
                              onPressed: () async {
                                try {
                                  await Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (_, __, ___) => HomePage(
                                            currentMapId: currentMapId,
                                          ),
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

                                  // Refresh data when returning from HomePage
                                  if (mounted) {
                                    await _refreshData();
                                  }
                                } catch (e) {
                                  print('Error navigating to HomePage: $e');
                                }
                              },
                              child: OptionsText(
                                text: 'طور المغامرة',
                                color: colorText,
                                size: height * 0.05,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // 2. SLIDE IN TITLE
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: height * 0.4, end: height * 0.18),
                  duration: Duration(milliseconds: 1200),
                  curve: Curves.easeInOut,
                  builder: (context, value, child) {
                    return Positioned(
                      top: value,
                      left: 0,
                      right: 0,
                      child: child!,
                    );
                  },
                  child: Container(
                    width: width,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: height * 0.6,
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                MenuButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
