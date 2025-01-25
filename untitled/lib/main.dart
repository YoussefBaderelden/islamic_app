
import 'package:flutter/material.dart';
import 'package:untitled/screans/Login/login_screan.dart';
import 'package:untitled/screans/home/homeScrean.dart';
import 'package:untitled/screans/splash/splash_screan.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        'splash': (_)=> SplashScrean(),
        'login': (_)=> LoginScrean(),
        'home': (_)=> Homescrean(),
      },
      initialRoute: 'splash',
    );
  }
}
