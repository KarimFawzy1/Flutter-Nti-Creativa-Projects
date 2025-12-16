import 'package:flutter/material.dart';
import 'package:task1/features/chat/chat_screen.dart';
import 'package:task1/features/cubit/logic.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
    required this.personCubit,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
  });

  final PersonCubit personCubit;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 61,
      child: ElevatedButton(
        onPressed: () async {
          final isValid = await personCubit.validateForm(
            formKey,
            emailController,
            passwordController,
            nameController,
          );
          if (isValid) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatScreen()),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF004CFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
        ),
        child: const Text(
          'Done',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
