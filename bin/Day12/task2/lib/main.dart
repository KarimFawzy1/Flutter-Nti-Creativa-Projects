import 'package:flutter/material.dart';
import 'features/login/login_screen.dart';
import 'features/splash/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task1/features/login/models/person_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/logic.dart';
import 'features/chat/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PersonModel1Adapter());
  await Hive.openBox('person2');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonCubit(),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/chat': (context) => const ChatScreen(),
        },
      ),
    );
  }
}
