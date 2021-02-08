import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome To Screen 3",
          style: TextStyle(fontSize: 30.0, color: Colors.blue),
        ),
      ),
    );
  }
}
