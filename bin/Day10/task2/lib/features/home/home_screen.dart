import 'package:flutter/material.dart';
import 'package:task1/features/home/widgets/custom_text_form.dart';
import 'package:task1/features/home/widgets/log_in_button.dart';
import 'package:task1/features/splash/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SplashScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.1),
            Image.asset("assets/images/instagram.png"),
            SizedBox(height: screenHeight * 0.05),
            CustomTextForm(
              controller: emailController,
              hintText: "Email",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
            ),
            SizedBox(height: screenHeight * 0.05),
            CustomTextForm(
              controller: passwordController,
              hintText: "Password",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.035),
            LogInButton(),
            SizedBox(height: screenHeight * 0.025),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/facebook.png"),
                  SizedBox(width: 10),
                  Text(
                    "Log in with Facebook",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 132, height: 1, color: Colors.grey),
                Text("OR", style: TextStyle(color: Colors.grey, fontSize: 12)),
                Container(width: 132, height: 1, color: Colors.grey),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: " Sign up",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(color: Colors.grey[400]),
            SizedBox(height: screenHeight * 0.025),
            Text(
              "Instagram from Facebook",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: screenHeight * 0.025),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
