import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pomodoro_app/widget/sidebar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.dark);

  int totalSeconds = 1500;
  bool isRunning = false;
  int totalPomodoros = 0;
  late Timer timer; // late는 해당 property가 사용되기 전에 초기화 된다고 하는 약속

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros = totalPomodoros + 1;
        isRunning = false;
        totalSeconds = 1500;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
        const Duration(seconds: 1), onTick); // duration마다 주기적으로 함수를 실행
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void resetTimer() {
    timer.cancel();
    setState(() {
      totalSeconds = 1500;
      isRunning = false;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: const Color(0xFFE7626C),
            textTheme: const TextTheme(
              displayLarge: TextStyle(
                color: Color(0xFF232B55),
              ),
              displaySmall: TextStyle(
                color: Color(0xFF232B55),
              ),
            ),
            cardColor: const Color(0xFFF4EDDB),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(
              0xFF232B55,
            ),
            cardColor: const Color(0xFFF4EDDB),
            textTheme: const TextTheme(
              displayLarge: TextStyle(
                color: Color(0xFFE7626C),
              ),
              displaySmall: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          themeMode: currentMode,
          home: Builder(
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 0,
                  leading: Builder(
                    builder: (context) => IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: Color(0xFFF4EDDB),
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(themeNotifier.value == ThemeMode.light
                          ? Icons.dark_mode
                          : Icons.light_mode),
                      onPressed: () {
                        themeNotifier.value =
                            themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      },
                    ),
                  ],
                ),
                drawer: const SideBar(),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                body: Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          format(totalSeconds),
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 89,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Center(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 80),
                            ),
                            IconButton(
                              color: Theme.of(context).cardColor,
                              iconSize: 120,
                              icon: Icon(isRunning
                                  ? Icons.pause_circle_outline
                                  : Icons.play_circle_outline),
                              onPressed:
                                  isRunning ? onPausePressed : onStartPressed,
                            ),
                            IconButton(
                              color: Theme.of(context).cardColor,
                              onPressed: resetTimer,
                              iconSize: 30,
                              icon: const Icon(Icons.replay_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Pomodors',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '$totalPomodoros',
                                    style: TextStyle(
                                      fontSize: 58,
                                      color: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
