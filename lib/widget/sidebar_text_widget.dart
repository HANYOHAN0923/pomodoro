import 'package:flutter/material.dart';
import 'package:pomodoro_app/screen/setting_screen.dart';

// ignore: camel_case_types
class sbText extends StatelessWidget {
  final String text;

  const sbText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SettingScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
