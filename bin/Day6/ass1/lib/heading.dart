import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Delivering to\n",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: "Al Satwa, 81A Street\n",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: "Hi Hepa!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 167, 161, 161),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 100),
          child: Image.asset("assets/she.png"),
        ),
      ],
    );
  }
}
