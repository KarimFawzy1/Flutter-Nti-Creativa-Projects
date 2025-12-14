import 'package:flutter/material.dart';

class ProductsContainer extends StatelessWidget {
  final String image;
  final String price;
  const ProductsContainer({
    super.key,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 204,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet consectetur.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              fontFamily: 'raleway',
            ),
          ),
        ],
      ),
    );
  }
}
