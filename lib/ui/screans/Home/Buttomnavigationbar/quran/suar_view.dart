import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_app/ui/model/sura_model_arguments.dart';
import 'package:islamic_app/ui/screans/suras/suras_screan.dart';
import 'package:islamic_app/ui/utils/AssetsManeger.dart';
import 'package:islamic_app/ui/utils/Shared_prefrence_provider.dart';
import 'package:provider/provider.dart';

import '../../../../model/sura_model.dart';
import '../../../../utils/AppColors.dart';

class SuarView extends StatelessWidget {

  final sura suras;
  late SharedPrefrenceProvider provider ;
  SuarView({super.key, required this.suras});

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return InkWell(
      onTap: () async {
         provider.add(suras.index!);
       await Navigator.pushNamed(context, SurasScrean.routname,
            arguments: SuraModelArguments(
              egSura: suras.suraEg,
              arSura: suras.suarAr,
              surasText: suras.fileName,
            ));
      },
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(Assetsmaneger.Sura_view),
                  Text(
                    '${suras.index! + 1}',
                    style: TextStyle(color: Appcolors.white),
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${suras.suraEg}',
                    style: TextStyle(
                        color: Appcolors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${suras.versesNum} Verses  ',
                    style: TextStyle(
                        color: Appcolors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Spacer(),
              Text(
                '${suras.suarAr}',
                style: TextStyle(
                    color: Appcolors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Appcolors.white,
          )
        ],
      ),
    );
  }
}
