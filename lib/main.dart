import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.yellow[400],
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(child: Image.asset('images/dice1.png')),
              Expanded(child: Image.asset('images/dice2.png')),
            ],
          ),
        ),
      ),
    );
  }
}
