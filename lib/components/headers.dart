import 'package:flutter/material.dart';
import '../constants.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color color, textColor;
  const HeaderText({
    Key key,
    this.text,
    this.color = kPrimaryColor,
    this.textColor = kPrimaryLightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 30.0, color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
