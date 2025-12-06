import 'package:ass/tiles.dart';
import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key, required this.moviesList});

  final List<String> moviesList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(bottom: 10),
      height: 246, // TODO: Make it dynamic
      width: double.infinity,
      color: Color(0xff282A28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 12, bottom: 10),
            child: Text(
              "Recommended", // TODO: Make it dynamic
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: moviesList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 18),
                  padding: EdgeInsets.only(bottom: 10),
                  height: 184, // TODO: Make it dynamic
                  color: Color(0xff343534),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tiles(movieName: moviesList[index]),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            size: 16,
                            color: const Color.fromARGB(255, 239, 178, 23),
                          ),
                          Text(
                            " 8.5/10",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(moviesList[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "2018 | R | 1h 59m",
                          style: TextStyle(
                            fontSize: 9,
                            color: Color(0xffB5B4B4),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
