import 'package:Connect_buddy/Screens/Welcome/about_screen.dart';
import 'package:Connect_buddy/components/rounded_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              'assets/images/Connect+logo.png',
              width: size.width * 0.9,
            ),
          ),
          RoundedButton(
            text: 'Next',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AboutScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
