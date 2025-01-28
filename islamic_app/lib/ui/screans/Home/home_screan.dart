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
  PageController controller = PageController();
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
              controller.jumpToPage(currentindexselected);
              setState(() {});
            },
            currentIndex: currentindexselected,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(Assetsmaneger.icQuran)), label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(Assetsmaneger.icAhades)),
                  label: 'Ahades'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(Assetsmaneger.icSepha)),
                  label: 'Sepha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(Assetsmaneger.icRadio)),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(Assetsmaneger.icPrayTimes)),
                  label: 'PrayTimes'),
            ]),
      ),
      body:PageView(
        controller:controller ,
        onPageChanged: (value) {
          currentindexselected = value;
          setState(() {

          });
        },
        children:  buttomIcons,
      ),
    );
  }
}
