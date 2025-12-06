import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/counter/cubit/logic.dart';
import 'features/counter/counter_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterScreen(),
      ),
    ),
  );
}
