import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/ui/model/sura_model_arguments.dart';
import 'package:islamic_app/ui/utils/AppColors.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';
import 'package:islamic_app/ui/utils/Shared_prefrence_provider.dart';
import 'package:provider/provider.dart';

class SurasScrean extends StatefulWidget {
  static const String routname = 'surasSceran';

  const SurasScrean({super.key});

  @override
  State<SurasScrean> createState() => _SurasScreanState();
}

class _SurasScreanState extends State<SurasScrean> {
  @override
  String suraContent = '';
  late SharedPrefrenceProvider provider ;

  Widget build(BuildContext context) {
    provider = Provider.of(context);
    var arguments =
        ModalRoute.of(context)!.settings.arguments as SuraModelArguments;
    if (suraContent.isEmpty) getcontent('${arguments.surasText}');
    return Scaffold(
      backgroundColor: Appcolors.black,
      appBar: AppBar(
        surfaceTintColor:Appcolors.black ,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Appcolors.primary,
            )),
        backgroundColor: Appcolors.black,
        title: Text(
          '${arguments.egSura}',
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
              Text('${arguments.arSura}',
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
          suraContent.isEmpty
              ? Expanded(
                child: Center(
                    child: CircularProgressIndicator(
                color: Appcolors.primary,
                                  )),
              )
              : Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    suraContent,
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

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    provider.get();
  }

  Future getcontent(String Filename) async {
    Future<String> future = rootBundle.loadString('assets/Suras/$Filename');
    suraContent = await future;
    setState(() {});
    List<String> suraFormate = suraContent.trim().split('\n');
    for (int i = 0; i < suraFormate.length; i++) {
      suraFormate[i] += '[${i + 1}]  ';
    }
    suraContent = suraFormate.join();

  }
}
