import 'package:flutter/material.dart';
import 'features/splash/splash_screen.dart';
import 'features/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubits/gender_selection/gender_selection_cubit.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
          create: (context) => GenderSelectionCubit(),
          child: SplashScreen(),
        ),
        '/home': (context) => HomeScreen(),
      },
    ),
  );
}
