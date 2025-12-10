import 'package:flutter/material.dart';
import 'package:task2/features/home/fav_items.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NameWidget());
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FavItems(index: 0),
        FavItems(index: 1),
        FavItems(index: 2),
        FavItems(index: 3),
        FavItems(index: 4),
        FavItems(index: 5),
      ],
    );
  }
}
