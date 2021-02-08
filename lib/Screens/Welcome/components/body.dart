// import 'package:Connect_buddy/Screens/Welcome/about_screen.dart';
// import 'package:Connect_buddy/components/rounded_button.dart';
import 'dart:async';
import 'package:Connect_buddy/Screens/Welcome/about_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  // @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => QuoteApp()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF052638),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/Connect+logo.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "Loading",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}

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
          // RoundedButton(
          //   text: 'Next',
          //   press: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return AboutScreen();
          //         },
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}