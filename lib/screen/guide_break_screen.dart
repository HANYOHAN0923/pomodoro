import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GuideBreakScreen extends StatelessWidget {
  const GuideBreakScreen({super.key});

  void finishiTutorial() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFirstRun', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      body: SizedBox(
        height: 570,
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                right: 150,
              ),
              child: Text(
                "TAKE A",
                style: TextStyle(
                  color: Color(0xFFE7626C),
                  fontSize: 35,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Regain your energy',
              style: TextStyle(
                color: Color(
                  0xFF232B55,
                ),
                fontSize: 25,
              ),
            ),
            const Text(
              'and take a short break',
              style: TextStyle(
                color: Color(
                  0xFF232B55,
                ),
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Image.asset(
              'images/step3.png',
            ),
          ],
        ),
      ),
    );
  }
}
