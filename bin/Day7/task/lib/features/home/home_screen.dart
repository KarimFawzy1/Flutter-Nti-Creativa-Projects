import 'package:flutter/material.dart';
import 'package:task/core/colors_manager.dart';
import 'package:task/core/bar.dart';
import 'package:task/core/text_styles.dart';
import 'package:task/features/home/widgets/gender_selection.dart';
import 'package:task/features/home/widgets/weight_age_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? genderName;
  double height = 166;
  double weight = 75;
  double age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(50), child: Bar()),
      body: Column(
        children: [
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenderSelection(
                label: 'Male',
                icon: Icons.male,
                isSelected: genderName == 'Male',
                onTap: () {
                  setState(() {
                    genderName = 'Male';
                  });
                },
              ),
              GenderSelection(
                label: 'Female',
                icon: Icons.female,
                isSelected: genderName == 'Female',
                onTap: () {
                  setState(() {
                    genderName = 'Female';
                  });
                },
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text('Height', style: TextStyles.text20),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${height.toInt()}',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'cm',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Slider(
                  value: height,
                  activeColor: ColorsManager.secondary,
                  inactiveColor: Color(0xffFFFFFF),
                  min: 100,
                  max: 250,
                  divisions: 150,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeightAgeTile(
                label: 'Weight',
                value: weight,
                onAdd: () {
                  setState(() {
                    weight++;
                  });
                },
                onRemove: () {
                  setState(() {
                    weight--;
                  });
                },
              ),
              WeightAgeTile(
                label: 'Age',
                value: age,
                onAdd: () {
                  setState(() {
                    age++;
                  });
                },
                onRemove: () {
                  setState(() {
                    age--;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: ColorsManager.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/result',
                  arguments: {
                    'gender': genderName,
                    'height': height,
                    'weight': weight,
                    'age': age,
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Calculate',
                  style: TextStyles.text20.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
