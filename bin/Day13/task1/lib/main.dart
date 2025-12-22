import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/firebase/firebase_db.dart';
import 'package:task1/features/cubit/logic.dart';
import 'features/home/home_screen.dart';
import 'core/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'features/favourites/favourites_screen.dart';
import 'features/details/details_screen.dart';
import 'features/onboarding/onboarding.dart';
import 'features/auth/signup/signup_screen.dart';
import 'features/splash/splash_screen.dart';
import 'features/auth/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.secondary,
        appBarTheme: AppBarTheme(backgroundColor: ColorManager.secondary),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/favourites': (context) => const FavouritesScreen(),
        '/details': (context) => const DetailsScreen(),
        '/onboarding': (context) => const Onboarding(),
        '/signup': (context) => BlocProvider(
          create: (context) => UserCubit(FirebaseDb()),
          child: const SignupScreen(),
        ),
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => BlocProvider(
          create: (context) => UserCubit(FirebaseDb()),
          child: const LoginScreen(),
        ),
      },
    );
  }
}
