import 'package:flutter/material.dart';
import 'package:task1/core/color_manager.dart';
import 'package:task1/features/home/widgets/products_container.dart';
import 'package:task1/features/home/widgets/text_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: ColorManager.primary,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home_outlined),
                SizedBox(height: 4),
                Container(
                  height: 3,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(1.5),
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 14),
                Expanded(
                  child: SizedBox(
                    width: 234, // set your desired width here
                    height: 36, // set your desired height here
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(18),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(Icons.photo_camera_outlined),
                          ),
                          suffixIconColor: ColorManager.primary,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search history",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.red,
                      radius: 42,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: ColorManager.background,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.delete_outlined,
                          size: 24,
                          color: ColorManager.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Wrap(
                  children: [
                    TextContainer(label: "Red Dress"),
                    TextContainer(label: "Sunglasses"),
                    TextContainer(label: "Socks"),
                    TextContainer(label: "Mustard Pants"),
                    TextContainer(label: "80-s Skirt"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommendations",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Wrap(
                  children: [
                    TextContainer(label: "Skirt"),
                    TextContainer(label: "Jeans"),
                    TextContainer(label: "Accessories"),
                    TextContainer(label: "Shoes White"),
                    TextContainer(label: "T-Shirt Black"),
                  ],
                ),
                SizedBox(height: 22),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Discover",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 202,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProductsContainer(
                        image: "assets/images/model1.png",
                        price: "\$125,000",
                      ),
                      SizedBox(width: 12),
                      ProductsContainer(
                        image: "assets/images/model2.png",
                        price: "\$32,00",
                      ),
                      SizedBox(width: 12),
                      ProductsContainer(
                        image: "assets/images/model3.png",
                        price: "\$21,000",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
