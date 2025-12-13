import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';
import 'features/splash/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/cubit/logic.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('box1');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => BlocProvider(
          create: (context) => NameCubit(),
          child: const SplashScreen(),
        ),
        '/home': (context) => BlocProvider(
          create: (context) => NameCubit(),
          child: const HomeScreen(),
        ),
      },
    );
  }
}
