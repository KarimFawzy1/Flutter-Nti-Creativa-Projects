import 'package:ass1/home_screen.dart';
import 'package:ass1/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "/home": (context) => const HomeScreen(),
        "/categories": (context) => const CategoriesScreen(),
        "/deliver": (context) => const DeliverScreen(),
        "/cart": (context) => const CartScreen(),
        "/profile": (context) => const ProfileScreen(),
      },
    );
  }
}
