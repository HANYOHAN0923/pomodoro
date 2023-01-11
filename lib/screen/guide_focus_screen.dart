import 'package:flutter/material.dart';
import 'package:pomodoro_app/widget/appbar_skip_widget.dart';

class GuideFocusScreen extends StatelessWidget {
  const GuideFocusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarSkip(),
      body: Text("test"),
    );
  }
}
