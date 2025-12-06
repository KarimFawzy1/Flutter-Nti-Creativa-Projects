import 'package:flutter/material.dart';

class ServicesTiles extends StatelessWidget {
  final String image;
  final String title;
  final String discount;
  final double width;
  const ServicesTiles({
    super.key,
    required this.image,
    required this.title,
    required this.discount,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 10),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // margin: EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 114, 96, 96),
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(10),
              ),
              width: width,
              height: 70,
              child: Image.asset(image),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff8900FE),
              ),
              child: Text(
                discount,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
