import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4EDDB),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.cancel_outlined,
              color: Color(
                0xFF232B55,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
