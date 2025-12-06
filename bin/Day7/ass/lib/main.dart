import 'package:flutter/material.dart';
import 'features/splash/splash_screen.dart';
import 'features/home/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
      },
    ),
  );
}
