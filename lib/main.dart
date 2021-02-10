import 'package:flutter/material.dart';
// import 'package:Connect_buddy/Screens/Welcome/welcome_screen.dart';
// import 'package:Connect_buddy/constants.dart';
import 'screens/welcome/components/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
