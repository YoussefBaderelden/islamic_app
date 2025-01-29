import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_app/ui/utils/AppColors.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';

class SephaTap extends StatefulWidget {
  const SephaTap({super.key});

  @override
  State<SephaTap> createState() => _SephaTapState();
}

class _SephaTapState extends State<SephaTap> {
  static int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assetsmaneger.bgSepha,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(Assetsmaneger.logo),
              Center(
                  child: Text(
                'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Appcolors.white),
              )),
              InkWell(
                onTap: () {
                  counter += 1;
                  setState(() {});
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(child: Image.asset(Assetsmaneger.sepha)),
                    Container(margin: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'سبحان الله',
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Appcolors.white),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            '$counter',
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Appcolors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
