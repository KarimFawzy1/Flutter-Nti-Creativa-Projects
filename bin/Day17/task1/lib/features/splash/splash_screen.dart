import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/logic.dart';
import 'package:task1/features/cubit/state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<NameCubit, NameState>(
        listener: (context, state) {
          if (state is SuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Operation successful: ${state.name}')),
            );
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Operation successful: ${state.errorMessage}'),
              ),
            );
          }
        },
        builder: (context, state) {
          final nameCubit = context.read<NameCubit>();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[150],
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      nameCubit.addName(nameController.text);
                    },
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nameCubit.getName();
                    },
                    child: Text('Get'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nameCubit.deleteName();
                    },
                    child: Text('Delete'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              if (state is SuccessState) Text(state.name),
              if (state is ErrorState) Text(state.errorMessage),
            ],
          );
        },
      ),
    );
  }
}
