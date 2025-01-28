import 'package:flutter/material.dart';
import 'package:islamic_app/ui/screans/Home/home_screan.dart';
import 'package:islamic_app/ui/utils/AppColors.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSceran extends StatelessWidget {
  const OnboardingSceran({super.key});

  static const String routname = 'onboarding';

  @override
  Widget build(BuildContext context) {
    final controler = PageController();
    int index = 0;

    return Scaffold(
      backgroundColor: Appcolors.black,
      body: SafeArea(
        child: Container(
          child: PageView(
            onPageChanged: (value) {
              index = value;
            },
            controller: controler,
            children: [
              Container(
                color: Appcolors.black,
                child: Column(
                  children: [
                    Center(child: Image.asset(Assetsmaneger.logo)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Image.asset(Assetsmaneger.onboarding1),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Text(
                      'Welcome To Islmi App',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                color: Appcolors.black,
                child: Column(
                  children: [
                    Center(child: Image.asset(Assetsmaneger.logo)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Image.asset(Assetsmaneger.onboarding2),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      'Welcome To Islami',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'We Are Very Excited To Have You In Our Community',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                color: Appcolors.black,
                child: Column(
                  children: [
                    Center(child: Image.asset(Assetsmaneger.logo)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Image.asset(Assetsmaneger.onboarding3),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      'Reading the Quran',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Read, and your Lord is the Most Generous',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                color: Appcolors.black,
                child: Column(
                  children: [
                    Center(child: Image.asset(Assetsmaneger.logo)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Image.asset(Assetsmaneger.onboarding4),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      'Bearish',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Praise the name of your Lord, the Most\n High',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                color: Appcolors.black,
                child: Column(
                  children: [
                    Center(child: Image.asset(Assetsmaneger.logo)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Image.asset(Assetsmaneger.onboarding5),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      'Holy Quran Radio',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'You can listen to the Holy Quran Radio\n through the application for free and easily',
                      style: TextStyle(
                          color: Appcolors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Appcolors.black,
        child: Row(
          children: [
            TextButton(
                onPressed: () {
                  controler.previousPage(
                      duration: Duration(microseconds: 100000),
                      curve: Curves.easeIn);
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                      color: Appcolors.primary,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )),
            Spacer(),
            SmoothPageIndicator(
              effect: WormEffect(
                  // dotColor: Appcolors.primary,
                  activeDotColor: Appcolors.primary),
              controller: controler,
              count: 5,
            ),
            Spacer(),
            TextButton(
                onPressed: () {
                  controler.nextPage(
                      duration: Duration(microseconds: 100000),
                      curve: Curves.easeIn);
                  print(index);
                  if (index == 4) {
                    Navigator.pushNamed(context, HomeScrean.routName);
                  }
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Appcolors.primary,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
