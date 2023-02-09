import 'package:flutter/material.dart';
import 'package:pomodoro_app/screen/guide_break_screen.dart';
import 'package:pomodoro_app/screen/guide_focus_screen.dart';
import 'package:pomodoro_app/screen/guide_how_screen.dart';
import 'package:pomodoro_app/screen/home_screen.dart';
import 'package:pomodoro_app/widget/appbar_skip_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GuideMainScreen extends StatelessWidget {
  GuideMainScreen({super.key});

  void skipTutorial() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFirstRun', false);
  }

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        appBar: const AppbarSkip(),
        body: Column(
          children: [
            SizedBox(
              height: 570,
              child: PageView(
                controller: _controller,
                children: const [
                  GuideHowScreen(),
                  GuideFocusScreen(),
                  GuideBreakScreen(),
                ],
              ),
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 40)),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xFFE7626C),
                    dotColor: Color(
                      0xFF232B55,
                    ),
                  ),
                ),
                const SizedBox()
              ],
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
                  skipTutorial();
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
                  'SKIP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
