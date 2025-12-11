import 'package:ass/core/color_manager.dart';
import 'package:ass/cubit/logic.dart';
import 'package:ass/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFormCustom extends StatelessWidget {
  final String labelText;
  final IconData suffixIcon;
  final bool isEmailField; // true = email, false = password

  const TextFormCustom({
    super.key,
    required this.labelText,
    required this.suffixIcon,
    required this.isEmailField,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        String? errorText;
        bool isFieldValid = false;

        if (state is LoginValidationState) {
          errorText = isEmailField ? state.emailError : state.passwordError;
          isFieldValid = errorText == null; // valid when no error
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 2,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            child: TextFormField(
              onChanged: (value) {
                final cubit = context.read<LoginCubit>();
                if (isEmailField) {
                  cubit.onEmailChanged(value);
                } else {
                  cubit.onPasswordChanged(value);
                }
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),
                labelText: labelText,
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.lightText,
                ),
                border: InputBorder.none,
                errorText: errorText,
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(
                    suffixIcon,
                    // green when valid, white otherwise
                    color: isFieldValid
                        ? ColorManager.secondary
                        : ColorManager.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
