import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key, required this.movieName});
  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Image.asset('assets/$movieName.png'),
        Icon(
          Icons.bookmark_add_rounded,
          color: const Color.fromARGB(212, 81, 79, 79),
          size: 36,
        ),
      ],
    );
  }
}
