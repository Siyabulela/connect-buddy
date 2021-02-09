import 'package:Connect_buddy/components/headers.dart';
import 'package:Connect_buddy/components/normalText.dart';
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
      backgroundColor: kPrimaryColor,
      body: Container(
          width: double.infinity,
          height: size.height / 2,
          color: kPrimaryLightColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   "LOGIN",
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              // TextFieldContainer(
              //   child: TextField(),
              // ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/twoColors.PNG',
                  width: double.infinity,
                ),
              ),
            ],
          )),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
