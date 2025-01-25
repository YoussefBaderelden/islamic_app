import 'package:flutter/material.dart';

import '../common_widget/Text_meta.dart';
import '../common_widget/facebook_photo.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({super.key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, 'login');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const FacebookPhoto(imagePath: 'assets/images/Vector.png'),
                const Spacer(),
                Container(
                  margin: EdgeInsets.all(76),
                  child: const Column(
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            color: Color(0xff898F9C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FacebookPhoto(
                              imagePath:
                                  'assets/images/meta-logo-facebook-svgrepo-com 1.png'),
                          TextMeta(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
