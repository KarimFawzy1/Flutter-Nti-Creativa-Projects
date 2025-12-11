import 'package:flutter/material.dart';
import 'features/splash/splash_screen.dart';
import 'features/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ass/cubit/logic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 785),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => BlocProvider(
            create: (context) => BmiCubit(),
            child: SplashScreen(),
          ),
          '/home': (context) => BlocProvider(
            create: (context) => BmiCubit(),
            child: HomeScreen(),
          ),
        },
      ),
    ),
  );
  // Remove the other runApp below to only call this version.
  // The old runApp is replaced by above code for ScreenUtil support.
  // If explicitly required to keep main() definition at the bottom for some
  // reason, move the body from here to there and remove this one.
  // The key part is wrapping MaterialApp with ScreenUtilInit.
}
