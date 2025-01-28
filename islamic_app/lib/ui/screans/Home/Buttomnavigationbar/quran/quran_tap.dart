import 'package:flutter/material.dart';
import 'package:islamic_app/ui/model/sura_model.dart';
import 'package:islamic_app/ui/screans/Home/Buttomnavigationbar/quran/suar_view.dart';
import 'package:islamic_app/ui/utils/AppColors.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';
import 'package:islamic_app/ui/utils/Shared_prefrence_provider.dart';
import 'package:islamic_app/ui/utils/sura_dials.dart';
import 'package:provider/provider.dart';

class QuranTap extends StatefulWidget {
  const QuranTap({super.key});

  @override
  State<QuranTap> createState() => _QuranTapState();
}

class _QuranTapState extends State<QuranTap> {
  String userText = '';
  List<sura> filteredList = [];
  late SharedPrefrenceProvider provider;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      intget();
    });
  }

  Future<void> intget() async {
    await provider.get();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    filteredList = SuraDials.suras.where((sura) {
      return sura.suarAr!.contains(userText) ||
          sura.suraEg!.toLowerCase().contains(userText.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: Appcolors.blackwithopasty,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              Assetsmaneger.BGhomeScrean,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(Assetsmaneger.logo),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      style: const TextStyle(color: Appcolors.white),
                      onChanged: (value) {
                        userText = value;
                        setState(() {});
                      },
                      cursorColor: Appcolors.primary,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Appcolors.primary, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Appcolors.primary, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Sura Name',
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Appcolors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Image.asset(Assetsmaneger.icSearchQuran),
                      ),
                    ),
                    if (provider.mostRecentSura.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      const Text(
                        'Most Recently',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Appcolors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.18, // Set a fixed height for the horizontal list
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: provider.mostRecentSura.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Appcolors.primary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '${provider.mostRecentSura[index].suraEg}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Appcolors.black,
                                        ),
                                      ),
                                      Text(
                                        '${provider.mostRecentSura[index].suarAr}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Appcolors.black,
                                        ),
                                      ),
                                      Text(
                                        '${provider.mostRecentSura[index].versesNum}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Appcolors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Image.asset(Assetsmaneger.recentSura),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                    const SizedBox(height: 16),
                    const Text(
                      'Suras List',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Appcolors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        return SuarView(suras: filteredList[index]);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
