import 'package:flutter/material.dart';
import 'package:pomodoro_app/screen/home_screen.dart';

class GuideScreen extends StatefulWidget {
  const GuideScreen({super.key});

  @override
  State<GuideScreen> createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  final List<String> imageList = [
    'images/step1.png',
    'images/step2.png',
    'images/step3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF4EDDB),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ));
          },
          child: const Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "SKIP",
              style: TextStyle(
                color: Color(0xFF232B55),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: PageView.builder(
        controller: PageController(
          initialPage: 0,
        ),
        itemCount: imageList.length,
        itemBuilder: (context, int index) {
          return Container(
            color: const Color(0xFFF4EDDB),
            child: Image.asset(
              imageList[index],
            ),
          );
        },
      ),
    );
  }
}
