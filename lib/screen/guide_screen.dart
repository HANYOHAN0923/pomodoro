import 'package:flutter/material.dart';
import 'package:pomodoro_app/widget/appbar_skip_widget.dart';

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
      appBar: const AppbarSkip(),
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
