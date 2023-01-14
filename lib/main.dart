import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pomodoro_app/screen/guide_how_screen.dart';
import 'package:pomodoro_app/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  sleep(
    const Duration(seconds: 1),
  );
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SharedPreferences prefs;
  bool firstRun = false;

  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    final isFirstRun = prefs.getBool('isFirstRun');
    if (isFirstRun == true) {
      setState(
        () {
          firstRun = true;
        },
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPrefs();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: firstRun ? const HomeScreen() : const GuideHowScreen(),
    );
  }
}
