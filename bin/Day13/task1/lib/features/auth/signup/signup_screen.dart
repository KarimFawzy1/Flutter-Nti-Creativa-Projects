import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/features/auth/signup/widgets/custom_password_field.dart';
import 'package:task1/features/auth/signup/widgets/custom_text_field.dart';
import '../../../core/color_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/logic.dart';
import 'package:task1/features/cubit/state.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final nameController = TextEditingController();

    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UsersLoaded) {
          Navigator.pushReplacementNamed(context, '/home');
        }
      },
      builder: (context, state) {
        final userCubit = context.read<UserCubit>();
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h),
                  Text(
                    'Signup',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorManager.text,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "email",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.text,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    controller: emailController,
                    hintText: 'email',
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(controller: nameController, hintText: 'name'),
                  SizedBox(height: 30.h),
                  Text(
                    "password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.text,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomPasswordField(controller: passwordController),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 327.w,
                    height: 54.h,
                    child: GestureDetector(
                      onTap: () {
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty &&
                            nameController.text.isNotEmpty) {
                          userCubit.signUp(
                            emailController.text,
                            passwordController.text,
                            nameController.text,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please fill all fields'),
                            ),
                          );
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManager.primary,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.whiteText,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 98.w,
                        height: 1.h,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(0, 97, 97, 0),
                              Color(0xFF616161),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textShaded,
                          ),
                        ),
                      ),
                      Container(
                        width: 98.w,
                        height: 1.h,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(0, 97, 97, 0),
                              Color(0xFF616161),
                            ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Image.asset('assets/images/apple.png'),
                      ),
                      Image.asset('assets/images/facebook.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
