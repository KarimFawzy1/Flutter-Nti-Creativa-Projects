import 'package:ass/tiles.dart';
import 'package:flutter/material.dart';

class NewReleases extends StatelessWidget {
  const NewReleases({super.key, required this.newReleases});

  final List<String> newReleases;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 187, // TODO: Make it dynamic
      width: double.infinity,
      color: Color(0xff282A28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 12, bottom: 10),
            child: Text(
              "New Releases", // TODO: Make it dynamic
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newReleases.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Tiles(movieName: newReleases[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
