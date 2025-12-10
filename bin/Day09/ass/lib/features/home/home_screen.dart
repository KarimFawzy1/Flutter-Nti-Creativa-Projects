import 'package:ass/core/color_manager.dart';
import 'package:ass/core/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushNamed(context, '/splash');
          },
        ),
        centerTitle: true,
        title: Text(
          'Visual search',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ColorManager.boldText,
          ),
        ),
      ),
      backgroundColor: ColorManager.white,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/model.png', fit: BoxFit.fill),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    top: 200,
                    bottom: 16,
                  ),
                  child: Text(
                    'Search for an outfit by taking a photo or uploading an image',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              CustomButton(
                text: 'Take a photo',
                onTap: () {},
                isOutline: false,
              ),
              CustomButton(
                text: 'Upload an image',
                onTap: () {},
                isOutline: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
