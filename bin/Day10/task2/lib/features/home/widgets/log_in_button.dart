import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text("Login", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
