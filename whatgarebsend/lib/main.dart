import 'package:contact_app/ui/screans/Home/home_screan.dart';
import 'package:contact_app/ui/screans/splash/splash_screan.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScrean.routeName :(_) => SplashScrean(),
        HomeScrean.routeName: (_) => HomeScrean(),
      },
      initialRoute: SplashScrean.routeName,
    );
  }
}
