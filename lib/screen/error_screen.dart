import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ErrorScreen extends StatelessWidget {
  final AsyncSnapshot<SharedPreferences> error;

  const ErrorScreen({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        error.toString(),
      ),
    );
  }
}
