import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              if (context.mounted) {
                Navigator.pushReplacementNamed(context, '/home');
              }
            },
            child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: Image.asset('assets/images/home.png'),
            ),
          ),
          label: 'Home',
        ),
        // BottomNavigationBarItem(
        //   icon: SizedBox(
        //     width: 24.w,
        //     height: 24.h,
        //     child: Image.asset('assets/images/Search.png'),
        //   ),
        //   label: 'Search',
        // ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              if (context.mounted) {
                Navigator.pushReplacementNamed(context, '/favourites');
              }
            },
            child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: Image.asset('assets/images/Heart.png'),
            ),
          ),
          label: 'Favorites',
        ),
        // BottomNavigationBarItem(
        //   icon: SizedBox(
        //     width: 24.w,
        //     height: 24.h,
        //     child: Image.asset('assets/images/Notification.png'),
        //   ),
        //   label: 'Notifications',
        // ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24.w,
            height: 24.h,
            child: Image.asset('assets/images/profile.png'),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
