import 'package:Connect_buddy/components/headers.dart';
import 'package:Connect_buddy/components/normalText.dart';
import 'package:Connect_buddy/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'second_screen.dart';
import 'third_screen.dart';


class QuoteApp extends StatelessWidget {
  List<Widget> pages = [AboutScreen(), SecondScreen(), ThirdScreen()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivational Quote App',
      home: Scaffold(
          body: Swiper(
        itemCount: pages.length,
        pagination: SwiperPagination(),
        itemBuilder: (BuildContext context, int index) => pages[index],
      )),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF052638),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              child: RoundedButton(
                text: 'English',
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
            ),
            Positioned(
              child: Image.asset(
                'assets/images/logo.PNG',
                width: size.width * 0.9,
              ),
            ),
            HeaderText(text: 'Welcome to “Connect\nBuddy”'),
            NormalText(
                text:
                    'The all in one internet connectivity app \nthat assists you to not only secure a\nreliable Wifi connection by connecting to\nnearby networks, but also allows you to\ntroubleshoot issues relating to your\nhomes Wifi network.'),
          ],
        ),
      ),
    );
  }
}
