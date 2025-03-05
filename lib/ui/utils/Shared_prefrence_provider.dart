import 'package:flutter/foundation.dart';
import 'package:islamic_app/ui/model/sura_model.dart';
import 'package:islamic_app/ui/utils/sura_dials.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceProvider extends ChangeNotifier {
  List<sura> mostRecentSura = [];
  void add( int index) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>MostRecent = prefs.getStringList('Most_recent')??[];

    if(MostRecent.contains('$index')){
      MostRecent.remove('$index');
      MostRecent.add('$index');
    }else{
      MostRecent.add('$index');
    }
     prefs.setStringList('Most_recent', MostRecent);

  }
 Future<void>  get() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>MostRecent = prefs.getStringList('Most_recent') ??[];
    List<sura> mostRecentNotReversed =[];

    for(int i =0; i< MostRecent.length;i++){
     var index = int.parse(MostRecent[i]);
      mostRecentNotReversed .add(SuraDials.suras[index]);
    }

    mostRecentSura = mostRecentNotReversed.reversed.toList();
    notifyListeners();

  }
}