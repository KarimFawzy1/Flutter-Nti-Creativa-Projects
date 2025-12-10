import 'package:flutter/material.dart';

class RestaurantsTiles extends StatelessWidget {
  final String name;
  final String time;
  final String image;
  const RestaurantsTiles({
    super.key,
    required this.name,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffD9D9D9)),
            ),
            child: Image.asset(image),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2, right: 4),
                child: Icon(Icons.timer_outlined, size: 12),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Color(0xff484C52),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
