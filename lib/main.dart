import 'package:flutter/material.dart';
import 'package:Connect_buddy/Screens/Welcome/welcome_screen.dart';
import 'package:Connect_buddy/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: const Color(0xFF052638)),
      home: WelcomeScreen(),
    );
  }
}