import 'package:flutter/material.dart';
import 'package:islamic_app/ui/screans/Home/home_screan.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';

class SplashScrean extends StatefulWidget {
  static const String routName = 'splash';

  const SplashScrean({super.key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushNamed(context, HomeScrean.routName);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        Assetsmaneger.splachScrean,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
