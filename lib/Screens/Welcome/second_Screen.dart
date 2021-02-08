import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome To Screen 2",
          style: TextStyle(fontSize: 30.0, color: Colors.red),
        ),
      ),
    );
  }
}
