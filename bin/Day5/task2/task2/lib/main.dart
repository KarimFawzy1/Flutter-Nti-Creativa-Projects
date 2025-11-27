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
          leading: const Icon(Icons.menu, color: Colors.white),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
          title: const Text('Sports', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(width: 10),
                  CardCustom(
                    name:
                        'Why are footballs biggest clubs starting newtournament',
                    colorName: Colors.orange,
                  ),
                  const SizedBox(width: 10),
                  CardCustom(name: 'Basketball', colorName: Colors.blue),
                  const SizedBox(width: 10),
                  CardCustom(name: 'Tennis', colorName: Colors.purple),
                  const SizedBox(width: 10),
                  CardCustom(name: 'Cricket', colorName: Colors.red),
                  const SizedBox(width: 10),
                  CardCustom(name: 'Baseball', colorName: Colors.brown),
                  const SizedBox(width: 10),
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

  CardCustom({super.key, required this.name, required this.colorName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      // width: 100,
      // height: 130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          SizedBox(
            width: 320,
            // height: 100,
            child: Image.asset('assets/football.png'),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
