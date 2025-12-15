import 'package:flutter/material.dart';
import 'package:task1/features/home/models/person_model.dart';
import 'package:task1/features/cubit/logic.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/home/widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final personCubit = context.read<PersonCubit>();

    return BlocBuilder<PersonCubit, PersonState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('Home'), centerTitle: true),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(controller: nameController, label: 'Name'),
              CustomTextField(controller: ageController, label: 'Age'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      personCubit.addPerson(
                        PersonModel(
                          name: nameController.text,
                          age: int.parse(ageController.text),
                        ),
                      );
                    },
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      personCubit.getPerson();
                    },
                    child: Text('Get'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      personCubit.deletePerson();
                    },
                    child: Text('Delete'),
                  ),
                ],
              ),
              if (state is SuccessState) Text('Name: ${state.person.name}'),
              if (state is SuccessState) Text('Age: ${state.person.age}'),
            ],
          ),
        );
      },
    );
  }
}
