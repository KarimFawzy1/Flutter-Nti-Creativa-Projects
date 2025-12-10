import 'package:ass1/coupon_tile.dart';
import 'package:ass1/custom_bar.dart';
import 'package:ass1/heading.dart';
import 'package:ass1/restaurants_tiles.dart';
import 'package:ass1/services_tiles.dart';
import 'package:ass1/shortcuts_tiles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBar(currentIndex: 0),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 20),
          Heading(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Services:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServicesTiles(
                image: "assets/food.png",
                title: "Food",
                discount: "Up to 50%",
                width: 105,
              ),
              ServicesTiles(
                image: "assets/wellness.png",
                title: "Health & Wellness",
                discount: "20mins",
                width: 85,
              ),
              ServicesTiles(
                image: "assets/groceries.png",
                title: "Groceries",
                discount: "15mins",
                width: 105,
              ),
            ],
          ),
          SizedBox(height: 15),
          CouponTile(),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Shortcuts:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ShortcutsTiles(
                  image: "assets/orders.png",
                  title: "Past\norders",
                ),
                ShortcutsTiles(
                  image: "assets/super.png",
                  title: "Super\nSaver",
                ),
                ShortcutsTiles(image: "assets/n.png", title: "Must\ntries"),
                ShortcutsTiles(image: "assets/care2.png", title: "Give\nBack"),
                ShortcutsTiles(
                  image: "assets/star.png",
                  title: "Best\nSellers",
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          CarouselSlider(
            items: List.generate(
              3, // repeat the image 5 times
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/krispy.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            options: CarouselOptions(
              height: 180,
              enlargeCenterPage: true,
              // viewportFraction: 0.6, // controls size of side items
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Popular restaurants nearby",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 200,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                RestaurantsTiles(
                  name: "Allo Beirut",
                  time: "32 mins",
                  image: "assets/allo.png",
                ),
                RestaurantsTiles(
                  name: "Laffah",
                  time: "38 mins",
                  image: "assets/laffah.png",
                ),
                RestaurantsTiles(
                  name: "Falafil Al \nRabiah Al khadhra",
                  time: "44 mins",
                  image: "assets/falafil.png",
                ),
                RestaurantsTiles(
                  name: "Barbar",
                  time: "34 mins",
                  image: "assets/barbar.png",
                ),
                RestaurantsTiles(
                  name: "Al Rabiah Al khadhra",
                  time: "32 mins",
                  image: "assets/food.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Categories")),
      bottomNavigationBar: CustomBar(currentIndex: 1),
    );
  }
}

class DeliverScreen extends StatelessWidget {
  const DeliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Deliver")),
      bottomNavigationBar: CustomBar(currentIndex: 2),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Cart")),
      bottomNavigationBar: CustomBar(currentIndex: 3),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Profile")),
      bottomNavigationBar: CustomBar(currentIndex: 4),
    );
  }
}
