import 'package:flutter/material.dart';
import 'features/splash/splash_screen.dart';
import 'features/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/logic.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
          create: (context) => BmiCubit(),
          child: SplashScreen(),
        ),
        '/home': (context) =>
            BlocProvider(create: (context) => BmiCubit(), child: HomeScreen()),
      },
    ),
  );
}
