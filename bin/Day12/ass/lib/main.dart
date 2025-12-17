import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';
import 'features/notes/inside_note_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/cubit/logic.dart';
import 'core/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task1/core/models/note_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox('notes');

  runApp(
    ScreenUtilInit(
      designSize: const Size(414, 1100),
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
    return BlocProvider(
      create: (context) => NoteCubit()..loadNotes(),
      child: MaterialApp(
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: ColorManager.secondary2,
            selectionColor: ColorManager.backgroundSecondary,
          ),
          scaffoldBackgroundColor: ColorManager.background,
          appBarTheme: AppBarTheme(backgroundColor: ColorManager.background),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeScreen(),
          '/note': (context) => const NoteScreen(),
        },
      ),
    );
  }
}
