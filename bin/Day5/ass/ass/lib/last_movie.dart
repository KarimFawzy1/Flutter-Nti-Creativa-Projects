import 'package:flutter/material.dart';

class LastMovie extends StatelessWidget {
  const LastMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/dora.png'),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.play_arrow_rounded, size: 40),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text(
            "Dora and the Lost City of Gold",
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text(
            "2019 | 1h 42m | Adventure, Family, Fantasy",
            style: TextStyle(fontSize: 10, color: Color(0xffB5B4B4)),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
