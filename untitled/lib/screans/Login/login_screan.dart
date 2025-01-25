import 'package:flutter/material.dart';
import 'package:untitled/screans/common_widget/Text_meta.dart';
import 'package:untitled/screans/common_widget/facebook_photo.dart';

class LoginScrean extends StatelessWidget {
  const LoginScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 80, bottom: 60),
                        child: const FacebookPhoto(
                            imagePath: 'assets/images/Vector.png'))),
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        hintText: 'Mobile Number or Email Address',
                        hintStyle: const TextStyle(
                            fontSize: 16, color: Color(0xff898F9C))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Color(0xff898F9C)),
                      suffixIcon: Image.asset('assets/images/Subtract.png'),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff1877F2)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Text(
                  'Forgotten Password ?',
                  style: TextStyle(fontSize: 16, color: Color(0xff898F9C)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff1877F2)),
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Create Account',
                              style: TextStyle(color: Color(0xff1877F2)),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FacebookPhoto(
                              imagePath:
                              'assets/images/meta-logo-facebook-svgrepo-com 1.png'),
                          TextMeta(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
