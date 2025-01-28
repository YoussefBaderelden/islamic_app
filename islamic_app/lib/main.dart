import 'package:flutter/material.dart';
import 'package:islamic_app/ui/model/sura_model.dart';
import 'package:islamic_app/ui/screans/Home/home_screan.dart';
import 'package:islamic_app/ui/screans/Splash/splash_screan.dart';
import 'package:islamic_app/ui/screans/hadeth_sceran/hadeth_screan.dart';
import 'package:islamic_app/ui/screans/onbording/onboarding_sceran.dart';
import 'package:islamic_app/ui/screans/suras/suras_screan.dart';
import 'package:islamic_app/ui/utils/Shared_prefrence_provider.dart';
import 'package:islamic_app/ui/utils/sura_dials.dart';
import 'package:provider/provider.dart';

void main() {
  for (int i = 0; i < 114; i++) {
    SuraDials.suras.add(sura(
        suarAr: SuraDials.arabicQuranSuras[i],
        suraEg: SuraDials.englishQuranSurahs[i],
        versesNum: SuraDials.AyaNumber[i],
        fileName: '${i + 1}.txt',
        index: i));
  }

  runApp(ChangeNotifierProvider(
      create: (context) => SharedPrefrenceProvider(), child: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScrean.routName: (_) => HomeScrean(),
        SplashScrean.routName: (_) => SplashScrean(),
        SurasScrean.routname: (_) => SurasScrean(),
        HadethScrean.routname: (_) => HadethScrean(),
        OnboardingSceran.routname: (_) => OnboardingSceran(),
      },
      initialRoute: SplashScrean.routName,
    );
  }
}
