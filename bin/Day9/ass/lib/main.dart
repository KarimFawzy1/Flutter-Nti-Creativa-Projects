import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home/home_screen.dart';
import 'features/splash/splash_screen.dart';
import 'cubit/logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Outfit Finder',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => BlocProvider(
          create: (context) => LoginCubit(),
          child: const SplashScreen(),
        ),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
