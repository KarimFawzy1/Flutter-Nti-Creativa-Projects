import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/custom_bottom_navigation_bar.dart';
import 'package:task1/features/home/widgets/category_container.dart';
import 'package:task1/features/home/widgets/home_food_container.dart';
import '../../core/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset('assets/images/Sun.png'),
                ),
                SizedBox(width: 8.w),
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.text,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset('assets/images/Buy.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: ColorManager.text,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 14.w),
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: ColorManager.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 41.h,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryContainer(
                    categoryName: "Breakfast",
                    isSelected: true,
                  ),
                  CategoryContainer(categoryName: "Lunch", isSelected: false),
                  CategoryContainer(categoryName: "Dinner", isSelected: false),
                  CategoryContainer(categoryName: "Snacks", isSelected: false),
                  CategoryContainer(categoryName: "Drinks", isSelected: false),
                  CategoryContainer(
                    categoryName: "Desserts",
                    isSelected: false,
                  ),
                  CategoryContainer(categoryName: "Other", isSelected: false),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 174.13 / 259.41,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                final images = [
                  'assets/images/food1.png',
                  'assets/images/food1.png',
                  'assets/images/food2.png',
                  'assets/images/food1.png',
                  'assets/images/food2.png',
                  'assets/images/food2.png',
                ];
                final titles = [
                  "Healthy Taco Salad with fresh vegetable",
                  "Spicy Chicken Wrap",
                  "Classic Caesar Salad",
                  "Spicy Chicken Wrap",
                  "Classic Caesar Salad",
                  "Grilled Veggie Sandwich",
                ];
                final caloriesList = [
                  "120 kcal",
                  "350 kcal",
                  "210 kcal",
                  "350 kcal",
                  "210 kcal",
                  "300 kcal",
                ];
                final times = [
                  "20 Min",
                  "18 Min",
                  "15 Min",
                  "18 Min",
                  "15 Min",
                  "25 Min",
                ];
                return HomeFoodContainer(
                  image: images[index],
                  title: titles[index],
                  calories: caloriesList[index],
                  time: times[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
