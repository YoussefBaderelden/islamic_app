import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamic_app/ui/screans/Home/Buttomnavigationbar/ahades/ahades_tap.dart';
import 'package:islamic_app/ui/screans/Home/Buttomnavigationbar/praytimes/pray_times_tap.dart';
import 'package:islamic_app/ui/screans/Home/Buttomnavigationbar/quran/quran_tap.dart';
import 'package:islamic_app/ui/screans/Home/Buttomnavigationbar/radio/radio_tap.dart';
import 'package:islamic_app/ui/screans/Home/Buttomnavigationbar/sepha/sepha_tap.dart';
import 'package:islamic_app/ui/utils/AppColors.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';

class HomeScrean extends StatefulWidget {
  static const String routName = 'Home';


  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int currentindexselected = 0;
  @override
  Widget build(BuildContext context) {

    List<Widget> buttomIcons = [
      QuranTap(),
      AhadesTap(),
      SephaTap(),
      RadioTap(),
      PrayTimesTap()
    ];
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Appcolors.primary),
        child: BottomNavigationBar(
            selectedItemColor: Appcolors.white,
            unselectedItemColor: Appcolors.black,
            onTap: (value) {
              currentindexselected = value;
              setState(() {});
            },
            currentIndex: currentindexselected,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(Assetsmaneger.icQuran), label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assetsmaneger.icAhades),
                  label: 'Ahades'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assetsmaneger.icSepha),
                  label: 'Sepha'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assetsmaneger.icRadio),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assetsmaneger.icPrayTimes),
                  label: 'PrayTimes'),
            ]),
      ),
      body: buttomIcons[currentindexselected],
    );
  }
}
