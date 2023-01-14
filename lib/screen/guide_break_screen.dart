import 'package:flutter/material.dart';
import 'package:pomodoro_app/screen/home_screen.dart';
import 'package:pomodoro_app/widget/appbar_skip_widget.dart';

class GuideBreakScreen extends StatelessWidget {
  const GuideBreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      appBar: const AppbarSkip(),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              right: 50,
            ),
            child: Text(
              "JUST",
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
            'CRegain your energy and',
            style: TextStyle(
              color: Color(
                0xFF232B55,
              ),
              fontSize: 25,
            ),
          ),
          const Text(
            'take a short break',
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
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              top: 40,
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 10,
                  width: 10,
                  child: Image.asset(
                    'images/circle.png',
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                  child: Image.asset(
                    'images/circle.png',
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                SizedBox(
                  height: 10,
                  width: 40,
                  child: Image.asset(
                    'images/circle_active.png',
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 45,
            ),
          ),
          SizedBox(
            width: 181,
            height: 49,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xFF232B55,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "LET'S GO",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
