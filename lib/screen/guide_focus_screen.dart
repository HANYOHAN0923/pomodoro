import 'package:flutter/material.dart';

class GuideFocusScreen extends StatelessWidget {
  const GuideFocusScreen({super.key});

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
              'Concentrate fully on your',
              style: TextStyle(
                color: Color(
                  0xFF232B55,
                ),
                fontSize: 25,
              ),
            ),
            const Text(
              'work',
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
              'images/step2.png',
            ),
          ],
        ),
      ),
    );
  }
}
