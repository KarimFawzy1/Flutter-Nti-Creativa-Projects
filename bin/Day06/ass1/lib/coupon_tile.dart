import 'package:flutter/material.dart';

class CouponTile extends StatelessWidget {
  const CouponTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          boxShadow: [
            // Shadow 1: 2px 2px 4px
            BoxShadow(
              color: Color(0x1A000000), // same as #0000001A
              offset: Offset(2, 2),
              blurRadius: 4,
              spreadRadius: 0,
            ),
            // Shadow 2: -2px -2px 4px
            BoxShadow(
              color: Color(0x1A000000),
              offset: Offset(-2, -2),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        width: 343,
        height: 89,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, right: 10),
              child: Image.asset("assets/vault.png"),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Got a code !\n",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: "Add your code and save on your \norder",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff484C52),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
