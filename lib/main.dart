import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:general_knowledge_app/database/initdb.dart';
import 'package:general_knowledge_app/providers/assetsProvider.dart';
import 'package:general_knowledge_app/providers/quiz/completeProvider.dart';
import 'package:general_knowledge_app/providers/mapProvider.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:general_knowledge_app/providers/quiz/intervalProvider.dart';
import 'package:general_knowledge_app/providers/quiz/matchingProvider.dart';
import 'package:general_knowledge_app/providers/quiz/optionsProvider.dart';
import 'package:general_knowledge_app/providers/quiz/orderingProvider.dart';
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/welcome/welecome.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PlayerProvider()),
        ChangeNotifierProvider(create: (_) => MapProvider()),
        ChangeNotifierProvider(create: (_) => QuizProvider()),
        ChangeNotifierProvider(create: (_) => CompleteProvider()),
        ChangeNotifierProvider(create: (_) => IntervalProvider()),
        ChangeNotifierProvider(create: (_) => OptionsProvider()),
        ChangeNotifierProvider(create: (_) => OrderingProvider()),
        ChangeNotifierProvider(create: (_) => MatchingProvider()),
        ChangeNotifierProvider(create: (_) => AssetsProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakkir',
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int mapDone = 0;
int max = 0;
bool isLoading = true;

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        await initDB();
        context.read<PlayerProvider>().loadPlayerFromPrefs();
        await Provider.of<MapProvider>(context, listen: false).loadMaps();
      } catch (e) {
        print('Error during initialization: $e');
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return const WelecomePage();
  }
}

Future<void> savePlayerData({
  int? hearts,
  int? coins,
  DateTime? lastHeartTimer,
  String? lastPlayed,
}) async {
  final prefs = await SharedPreferences.getInstance();
  if (coins != null) await prefs.setInt('coins', coins);
  if (hearts != null) await prefs.setInt('hearts', hearts);
  if (lastHeartTimer != null) {
    await prefs.setString('lastHeartStart', lastHeartTimer.toIso8601String());
  }
  if (lastPlayed != null) {
    await prefs.setString('lastPlayed', lastPlayed);
  }
}
