import 'package:flutter/material.dart';
import 'package:islamic_app/ui/model/Hadeth_model_class.dart';

import '../../utils/AppColors.dart';
import '../../utils/AssetsManeger.dart';

class HadethScrean extends StatelessWidget {
  const HadethScrean({super.key});
  static const String routname = 'HadethScrean';

  @override
  Widget build(BuildContext context) {


    var arguments =
    ModalRoute.of(context)!.settings.arguments as HadethModelClass;
    return Scaffold(

      backgroundColor: Appcolors.black,
      appBar: AppBar(
        surfaceTintColor:Appcolors.black ,
        backgroundColor: Appcolors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Appcolors.primary,
            )),
        title: Text(
          'Hadith ${arguments.index}',
          style: TextStyle(
              color: Appcolors.primary,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(Assetsmaneger.liftQuat),
              Spacer(),
              Text('${arguments.title}',
                  style: TextStyle(
                      color: Appcolors.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              Spacer(),
              Image.asset(Assetsmaneger.rightQuat),
            ],
          ),
          SizedBox(
            height: 17,
          ),
          arguments.content!.isEmpty
              ? Expanded(
                child: Center(
                child: CircularProgressIndicator(
                  color: Appcolors.primary,
                )),
              )
              : Expanded(
                child: SingleChildScrollView(
                              child: Text(
                arguments.content !,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Appcolors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                              ),
                            ),
              ),
          Image.asset(Assetsmaneger.suraContentBG),
        ],
      ),
    );
  }
}
