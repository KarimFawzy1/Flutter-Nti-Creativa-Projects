import 'package:flutter/material.dart';
import 'package:task1/core/custom_bottom_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/color_manager.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 34.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'My Favourites',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.text,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 18.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 156 / 198,
                ),
                itemBuilder: (context, index) {
                  return FavContainer(
                    image: 'assets/images/fav1.png',
                    title: 'Sunny Egg & Toast Avocado',
                    avatar: 'assets/images/model.png',
                    name: 'Alice Fala',
                  );
                },
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavContainer extends StatelessWidget {
  final String image;
  final String title;
  final String avatar;
  final String name;
  const FavContainer({
    super.key,
    required this.image,
    required this.title,
    required this.avatar,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 198.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: const Color(0xFFFBFBFB), width: 1),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1A063336), // #0633361A
            offset: const Offset(0, 2),
            blurRadius: 16,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(
                  image,
                  width: 132.w,
                  height: 88.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10.h,
                right: 10.w,
                child: Container(
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: 16.w,
                    height: 16.h,
                    child: Image.asset('assets/images/HeartToggled.png'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.text,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 10.w),
              Container(
                width: 24.w,
                height: 24.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorManager.secondary,
                    width: 1.5.w,
                  ),
                ),
                child: ClipOval(child: Image.asset(avatar, fit: BoxFit.cover)),
              ),
              SizedBox(width: 8.w),
              Text(
                name,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.textTertiary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
