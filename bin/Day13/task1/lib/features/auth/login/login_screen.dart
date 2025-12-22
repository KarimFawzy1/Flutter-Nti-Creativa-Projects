import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/features/auth/login/widgets/custom_password_field.dart';
import 'package:task1/features/auth/login/widgets/custom_text_field.dart';
import '../../../core/color_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/cubit/logic.dart';
import 'package:task1/features/cubit/state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UsersLoaded) {
          Navigator.pushReplacementNamed(context, '/home');
        } else if (state is UsersError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
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
                    'Login',
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
                            passwordController.text.isNotEmpty) {
                          userCubit.signIn(
                            emailController.text,
                            passwordController.text,
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
                          color: state is UsersLoading
                              ? ColorManager.textShaded
                              : ColorManager.primary,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: Alignment.center,
                        child: state is UsersLoading
                            ? const CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              )
                            : Text(
                                'Login',
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
