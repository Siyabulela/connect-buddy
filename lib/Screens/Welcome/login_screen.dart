import 'package:Connect_buddy/Screens/Welcome/components/rounded_button.dart';
import 'package:Connect_buddy/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "I forgot my password?",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 170,
            ),
            RoundedButton(
              text: 'Login',
              press: () {},
              width: size.width * 0.9,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Don't have an account?",
                    textAlign: TextAlign.end,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Text(
                    "  Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: const Divider(
                    color: kPrimaryColor,
                    height: 5,
                    indent: 0,
                    endIndent: 0,
                    thickness: 3,
                  ),
                ),
                Expanded(
                  child: Text(" OR "),
                  flex: 0,
                ),
                Expanded(
                  child: const Divider(
                    color: kPrimaryColor,
                    height: 5,
                    indent: 0,
                    endIndent: 0,
                    thickness: 3,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            RoundedButton(
              text: 'Continue with Google',
              press: () {},
              width: size.width * 0.9,
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
