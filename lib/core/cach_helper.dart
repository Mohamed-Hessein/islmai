
import 'package:islamii/core/suras_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CachHelper {
  static late SharedPreferences prefs;

static init()async{

   prefs = await SharedPreferences.getInstance();
  }
  static Future<bool> setBool(bool value)async{

  return await prefs.setBool('first', value);

}
  static  bool?  getBool( String key){

 return prefs.getBool(key);
}

static List<int>  getList(String vlau){
  List<String> ? surahData = prefs.getStringList(vlau);
 return surahData?.map((e)=> int.parse(e)).toSet().toList() ?? [];
}
  static Future<void> setList(int i)async{
  var lastList = getList('item');
  lastList.add(i);
  var data = lastList.map((e) => e.toString()).toSet().toList() ?? [];
     await prefs.setStringList('item', data);

  }
}