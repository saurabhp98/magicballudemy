import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'magicball',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int magicballCard = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything?'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              magicballCard = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('./images/ball$magicballCard.png'),
        ),
      ),
    );
  }
}
