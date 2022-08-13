import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int dice1 = 1;
  int dice2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice App'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            dice1 = Random().nextInt(6) + 1;
            dice2 = Random().nextInt(6) + 1;
            setState(() {});
          },
          child: Row(
            children: [
              Expanded(child: Image.asset('assets/dice$dice1.png')),
              SizedBox(
                width: 16,
              ),
              Expanded(child: Image.asset('assets/dice$dice2.png')),
            ],
          ),
        ),
      ),
    );
  }
}
