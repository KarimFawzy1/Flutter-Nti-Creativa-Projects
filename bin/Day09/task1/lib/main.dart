import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/todo/cubit/logic.dart';
import 'package:task1/features/todo/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (context) => TodoCubit(), child: HomePage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
