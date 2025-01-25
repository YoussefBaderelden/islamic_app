import 'package:contact_app/ui/screans/Home/home_screan.dart';
import 'package:flutter/material.dart';

class SplashScrean extends StatelessWidget {
  const SplashScrean({super.key});

  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushNamed(context, HomeScrean.routeName);
    },) ;
    return Scaffold(
      backgroundColor: Color(0xff29384D),
      body: Center(
        child: Image.asset(
          'assets/images/Group 6.png',
        ),
      ),
    );
  }
}
