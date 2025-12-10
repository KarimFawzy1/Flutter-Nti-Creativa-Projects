import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/counter/cubit/logic.dart';
import 'package:task/features/counter/cubit/state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Counter"),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return CounterWidget();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCubit cubit = context.read<CounterCubit>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(cubit.counter.toString()),
        ElevatedButton(
          onPressed: () {
            cubit.increment();
          },
          child: Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: () {
            cubit.decrement();
          },
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
