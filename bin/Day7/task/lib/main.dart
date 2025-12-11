import 'package:flutter/material.dart';
import 'package:task/features/home/home_screen.dart';
import 'package:task/features/result/result_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/result': (context) => ResultScreen(),
      },
    ),
  );
}
