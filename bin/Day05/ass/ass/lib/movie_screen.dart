import 'package:ass/last_movie.dart';
import 'package:ass/new_releases.dart';
import 'package:ass/recommended.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  MovieScreen({super.key});
  final List<String> moviesList = ["narcos", "annabelle", "deadpool", "toy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (_) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Browse'),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark),
            label: 'Watchlist',
          ),
        ],
      ),
      body: Expanded(
        child: ListView(
          children: [
            LastMovie(),
            NewReleases(newReleases: moviesList),
            Recommended(moviesList: moviesList),
            Recommended(moviesList: moviesList),
          ],
        ),
      ),
    );
  }
}
