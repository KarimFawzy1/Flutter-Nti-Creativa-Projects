import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/core/colors_manager.dart';
import 'package:task2/features/home/cubit/logic.dart';
import 'package:task2/features/home/cubit/state.dart';

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

// blocbuilder
class FavItems extends StatelessWidget {
  final int index;
  const FavItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final HomeCubit homeCubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state.items[index].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    homeCubit.addFav(state.items[index]);
                  },
                  icon: Icon(
                    Icons.star,
                    size: 25,
                    color: state.items[index].isFav
                        ? ColorsManager.red
                        : ColorsManager.grey,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
