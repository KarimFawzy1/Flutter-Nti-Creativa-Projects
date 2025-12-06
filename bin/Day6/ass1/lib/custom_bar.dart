import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  final int currentIndex;
  const CustomBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xffF5F6F7),
      selectedItemColor: Color(0xff8900FE),
      unselectedItemColor: Color(0xff484C52),
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacementNamed(context, "/home");
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, "/categories");
        } else if (index == 2) {
          Navigator.pushReplacementNamed(context, "/deliver");
        } else if (index == 3) {
          Navigator.pushReplacementNamed(context, "/cart");
        } else if (index == 4) {
          Navigator.pushReplacementNamed(context, "/profile");
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: "Categories",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.delivery_dining_outlined),
          label: "Deliver",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    );
  }
}
