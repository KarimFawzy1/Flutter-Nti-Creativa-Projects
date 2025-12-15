import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';
import 'features/splash/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task1/features/home/models/person_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/logic.dart';
// import 'features/cubit/logic.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PersonModelAdapter());
  await Hive.openBox('person1');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => BlocProvider(
          create: (context) => PersonCubit(),
          child: const HomeScreen(),
        ),
      },
    );
  }
}
