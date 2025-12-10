import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('News', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "Pick your category \n of interest",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Add spacing if needed
            SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                padding: EdgeInsets.only(left: 20, right: 25, top: 20),
                crossAxisCount: 2,
                children: [
                  CardCustom(
                    name: 'Sports',
                    colorName: Color.fromARGB(255, 201, 28, 34),
                    pic: 'sports.png',
                  ),
                  CardCustom(
                    name: 'Politics',
                    colorName: Color(0xFF003e90),
                    pic: 'Politics.png',
                  ),
                  CardCustom(
                    name: 'Health',
                    colorName: Color(0xFFed1e79),
                    pic: 'health.png',
                  ),
                  CardCustom(
                    name: 'Business',
                    colorName: Color(0xFFcf7e48),
                    pic: 'bussines.png',
                  ),
                  CardCustom(
                    name: 'Enviroment',
                    colorName: Color(0xFF4882cf),
                    pic: 'environment.png',
                  ),
                  CardCustom(
                    name: 'Science',
                    colorName: Color(0xFFf2d352),
                    pic: 'science.png',
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

class CardCustom extends StatelessWidget {
  String name;
  Color colorName;
  String pic;
  CardCustom({
    super.key,
    required this.name,
    required this.colorName,
    required this.pic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 15),
      // width: 135,
      // height: 90,
      decoration: BoxDecoration(
        color: colorName,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 120, height: 110, child: Image.asset('assets/$pic')),
          Text(name, style: TextStyle(color: Colors.white, fontSize: 21)),
        ],
      ),
    );
  }
}
