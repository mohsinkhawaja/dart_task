import 'package:dart_task/Exercise1/view_exercise.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Exercise2/view_exercise2.dart';
import 'Exercise3/view_exercise3.dart';
import 'Exercise4/view_exercise4.dart';
import 'Exercise5/view_exercise5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DartProblems',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Exercise5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
