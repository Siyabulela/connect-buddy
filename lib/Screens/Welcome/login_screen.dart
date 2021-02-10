// import 'package:Connect_buddy/components/headers.dart';
// import 'package:Connect_buddy/components/normalText.dart';
import 'package:Connect_buddy/components/rounded_button.dart';
import 'package:Connect_buddy/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage("assets/images/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              "Hello,\nWelcome Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF424242)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open_outlined),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF424242)))),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "                                                                    I forgot my password?",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 170,
            ),
            RoundedButton(
              text: 'Login',
              press: () {},
              width: size.width * 0.9,
              color: kPrimaryLightColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "                           Don't have an account? Sign Up",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "---------------------------------------------- OR ----------------------------------------------",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            RoundedButton(
              text: 'Continue with Google',
              press: () {},
              width: size.width * 0.9,
              color: kPrimaryLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
