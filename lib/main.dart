import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdicenumber = 1;
  int rightdicenumber = 5;

  void changediceface() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.red[900],
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: FlatButton(
                    onPressed: () {
                      changediceface();
                    },
                    child: Image.asset('images/dice$leftdicenumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: FlatButton(
                    onPressed: () {
                      changediceface();
                    },
                    child: Image.asset('images/dice$rightdicenumber.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
