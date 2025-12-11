import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/features/home/cubit/logic.dart';
import 'features/home/favourites_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => HomeCubit(),
        child: const FavouritesScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
