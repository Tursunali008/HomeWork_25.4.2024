import 'package:flutter/material.dart';
import 'package:thirdlesson/musicsTheme.dart';
import 'package:thirdlesson/start_screen.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen()
    );
  }
}