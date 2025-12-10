import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: .5 * width,
          height: 400,
          color: width > 400 ? Colors.red : Colors.blue,
        ),
      ),
    );
  }
}
