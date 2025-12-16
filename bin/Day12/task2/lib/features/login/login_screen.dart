import 'package:flutter/material.dart';
import 'package:task1/features/cubit/logic.dart';
import 'package:task1/features/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/login/widgets/custom_text_field.dart';
import 'package:task1/features/login/widgets/log_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final personCubit = context.read<PersonCubit>();
    final formKey = GlobalKey<FormState>();

    return BlocBuilder<PersonCubit, PersonState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: 197,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      controller: emailController,
                      label: 'Email',
                    ),
                    CustomTextField(
                      controller: passwordController,
                      label: 'Password',
                    ),
                    CustomTextField(controller: nameController, label: 'Name'),
                    const SizedBox(height: 16),
                    if (state is LoadingState)
                      const CircularProgressIndicator(),
                    if (state is ErrorState)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          state.errorMessage,
                          style: const TextStyle(color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    SizedBox(height: 50),
                    LogInButton(
                      personCubit: personCubit,
                      formKey: formKey,
                      emailController: emailController,
                      passwordController: passwordController,
                      nameController: nameController,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
