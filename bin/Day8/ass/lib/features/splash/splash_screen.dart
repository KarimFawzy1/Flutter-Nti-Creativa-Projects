import 'package:ass/core/bar.dart';
import 'package:ass/features/splash/gender_selection.dart';
import 'package:ass/features/splash/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:ass/core/color_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(150), child: Bar()),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please choose your gender',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorManager.blackColor,
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                GenderSelection(
                  genderName: "Male",
                  icon: Icons.male,
                  image: Image.asset('assets/male.png'),
                  onTap: () {
                    setState(() {
                      selectedGender = "Male";
                    });
                  },
                ),
                SizedBox(height: 30),
                GenderSelection(
                  genderName: "Female",
                  icon: Icons.female,
                  image: Image.asset('assets/female.png'),
                  onTap: () {
                    setState(() {
                      selectedGender = "Female";
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            NextScreen(selectedGender: selectedGender),
          ],
        ),
      ),
    );
  }
}
