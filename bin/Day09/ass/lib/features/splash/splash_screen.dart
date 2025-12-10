import 'package:ass/core/custom_button.dart';
import 'package:ass/features/splash/widgets/account_container.dart';
import 'package:ass/features/splash/widgets/forgot_password_button.dart';
import 'package:ass/features/splash/widgets/text_form_custom.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/color_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/logic.dart';
import 'package:ass/cubit/state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushNamed(context, '/home');
          } else if (state is LoginError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 25, bottom: 70),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.boldText,
                  ),
                ),
              ),
            ),
            TextFormCustom(
              labelText: 'Email',
              suffixIcon: Icons.check,
              isEmailField: true,
            ),
            TextFormCustom(
              labelText: 'Password',
              suffixIcon: Icons.check,
              isEmailField: false,
            ),
            ForgotPasswordButton(),
            CustomButton(
              text: 'LOGIN',
              isOutline: false,
              onTap: () {
                context.read<LoginCubit>().login();
              },
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Or login with social account",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.boldText,
                ),
              ),
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AccountContainer(image: 'google'),
                SizedBox(width: 20),
                AccountContainer(image: 'facebook'),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
