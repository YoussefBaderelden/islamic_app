import 'package:flutter/material.dart';
import 'package:islamic_app/ui/screans/Home/home_screan.dart';
import 'package:islamic_app/ui/utils/AppColors.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSceran extends StatefulWidget {
  const OnboardingSceran({super.key});

  static const String routname = 'onboarding';

  @override
  State<OnboardingSceran> createState() => _OnboardingSceranState();
}

class _OnboardingSceranState extends State<OnboardingSceran> {
  final PageController controler = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.black,
      body: SafeArea(
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          controller: controler,
          children: [
            _buildOnboardingPage(Assetsmaneger.onboarding1, 'Welcome To Islmi App', ''),
            _buildOnboardingPage(Assetsmaneger.onboarding2, 'Welcome To Islami',
                'We Are Very Excited To Have You In Our Community'),
            _buildOnboardingPage(Assetsmaneger.onboarding3, 'Reading the Quran',
                'Read, and your Lord is the Most Generous'),
            _buildOnboardingPage(Assetsmaneger.onboarding4, 'Bearish',
                'Praise the name of your Lord, the Most High'),
            _buildOnboardingPage(Assetsmaneger.onboarding5, 'Holy Quran Radio',
                'You can listen to the Holy Quran Radio\n through the application for free and easily'),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Appcolors.black,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            index > 0 ?TextButton(
                onPressed: () => controler.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: Appcolors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ):TextButton(
              onPressed: () => controler.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: Appcolors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            Spacer(),
            SmoothPageIndicator(
              effect: WormEffect(activeDotColor: Appcolors.primary),
              controller: controler,
              count: 5,
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                if (index == 4) {
                  Navigator.pushReplacementNamed(context, HomeScrean.routName);
                } else {
                  controler.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(
                index == 4 ? 'Finish' : 'Next',
                style: TextStyle(
                  color: Appcolors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(String image, String title, String subtitle) {
    return Container(
      color: Appcolors.black,
      child: Column(
        children: [
          Center(child: Image.asset(Assetsmaneger.logo)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Image.asset(image),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            title,
            style: TextStyle(
              color: Appcolors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          if (subtitle.isNotEmpty) ...[
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Appcolors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
