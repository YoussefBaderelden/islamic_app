import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/ui/model/Hadeth_model_class.dart';
import 'package:islamic_app/ui/screans/hadeth_sceran/hadeth_screan.dart';
import 'package:islamic_app/ui/utils/AppColors.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';

class AhadesTap extends StatefulWidget {
  const AhadesTap({super.key});

  @override
  State<AhadesTap> createState() => _AhadesTapState();
}

class _AhadesTapState extends State<AhadesTap> {
  List<HadethModelClass> hadeth = [];

  @override
  void initState() {
    super.initState();
    getHadthcontent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.Gray,
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                Assetsmaneger.bgHadeth,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Center(child: Image.asset(Assetsmaneger.logo)),
                  Container(
                    child: Expanded(
                      child: CarouselSlider.builder(
                          itemCount: 50,
                          itemBuilder: (context, index, realIndex) {
                            return

                              hadeth.isEmpty? Center(child: CircularProgressIndicator(
                                color: Appcolors.black,
                              )): InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, HadethScrean.routname,
                                    arguments: hadeth[index]);
                              },
                              child: Container(
                                padding: EdgeInsets.all(14),
                                margin: EdgeInsets.only(bottom: 34),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Appcolors.primary,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              Assetsmaneger.liftQuat,
                                              color: Appcolors.black,
                                            ),
                                            Image.asset(
                                              Assetsmaneger.rightQuat,
                                              color: Appcolors.black,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${hadeth[index].title}',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                        '${hadeth[index].content}',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height,
                            enlargeCenterPage: true,
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Future<void> getHadthcontent() async {
    List<HadethModelClass> loadedHadeth = [];
    for (var i = 1; i <= 50; i++) {
      String getcontent = await rootBundle.loadString('assets/Hadeeth/h$i.txt');
      List<String> HadethFormate = getcontent.split('\n');
      String title = HadethFormate.first;
      HadethFormate.removeAt(0);
      String content = HadethFormate.join();
      loadedHadeth.add(HadethModelClass(title, content, i));
    }
    setState(() {
      hadeth = loadedHadeth;
    });
  }

}
