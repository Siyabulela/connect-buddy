import 'package:Connect_buddy/Screens/Welcome/components/rounded_button.dart';
import 'package:Connect_buddy/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage("assets/images/signup.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 160,
            ),
            Text(
              "Create\nyour account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outlined),
                  hintText: "First name and last name",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF424242)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined),
                  hintText: "Phone number",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF424242)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
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
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outlined),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF424242)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outlined),
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: const Color(0xFF424242)))),
            ),
            SizedBox(
              height: 100,
            ),
            RoundedButton(
              text: 'Sign Up',
              press: () {},
              width: size.width * 0.9,
              color: kPrimaryLightColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "                           Already have an account? Sign In",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
