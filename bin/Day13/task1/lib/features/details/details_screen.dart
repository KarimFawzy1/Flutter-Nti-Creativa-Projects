import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';
import 'package:task1/features/details/widgets/food_details_widget.dart';
import 'package:task1/features/details/widgets/ingredients_container.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/fooddetails.png'),
                ),
                Positioned(
                  top: 10.h,
                  right: 14.w,
                  child: GestureDetector(
                    onTap: () {
                      // Handle heart tap here
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/Heart2.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Healthy Taco Salad",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.text,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.access_time_rounded,
                  size: 24.sp,
                  color: ColorManager.textTertiary,
                ),
                SizedBox(width: 4.w),
                Text(
                  "15 min",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorManager.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 40.w),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.textQuaternary,
                ),
                children: [
                  TextSpan(
                    text:
                        "This Healthy Taco Salad is the universal delight of taco night ",
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: GestureDetector(
                      onTap: () {
                        // Handle "View More" tap here
                      },
                      child: Text(
                        "View More",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: ColorManager.text,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2.7,
              shrinkWrap: true,
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 10.h,
              physics: NeverScrollableScrollPhysics(),
              children: [
                FoodDetailsWidget(
                  image: 'assets/images/Carbs.png',
                  text: '65g carbs',
                ),
                FoodDetailsWidget(
                  image: 'assets/images/Proteins.png',
                  text: '12g protein',
                ),
                FoodDetailsWidget(
                  image: 'assets/images/Calories2.png',
                  text: '120 kcal',
                ),
                FoodDetailsWidget(
                  image: 'assets/images/Fats.png',
                  text: '12g fat',
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Divider(
            color: Colors.grey[200],
            thickness: 1,
            indent: 20.w,
            endIndent: 20.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.text,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          IngredientsContainer(
            image: 'assets/images/Tortilla.png',
            text: 'Tortilla Chips',
            quantity: '2',
          ),
          IngredientsContainer(
            image: 'assets/images/Avocado.png',
            text: 'Avocado',
            quantity: '1',
          ),
          IngredientsContainer(
            image: 'assets/images/Cabbage.png',
            text: 'Red Cabbage',
            quantity: '9',
          ),
          IngredientsContainer(
            image: 'assets/images/Peanuts.png',
            text: 'Peanuts',
            quantity: '1',
          ),
          IngredientsContainer(
            image: 'assets/images/Onions.png',
            text: 'Red Onions',
            quantity: '1',
          ),
        ],
      ),
    );
  }
}
