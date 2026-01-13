import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/core/styles.dart';
import 'package:islami/core/suras_model.dart';

class ReadingSuea extends StatefulWidget {
   ReadingSuea({super.key});

static String routeName  = '/reading quran';

  @override
  State<ReadingSuea> createState() => _ReadingSueaState();
}

class _ReadingSueaState extends State<ReadingSuea> {
  List ayat =[];
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }
  Widget build(BuildContext context) {

    dynamic model = ModalRoute.of(context)!.settings.arguments as Map;
    SurasModel surasModel = model['model'];
    int index = model['i'];
     if(ayat.isEmpty){

cutSura(index);
     }
    return Scaffold(appBar: AppBar(backgroundColor: ColorsS.black2020,

      automaticallyImplyActions: false,
      leading: InkWell( onTap: (){
        Navigator.pop(context);
      },
          child: Icon(Icons.arrow_back, color: ColorsS.color,)),
      title: Text('${surasModel.suarnameen}', style: Styles.styleSmall,),centerTitle: true,



    ),
backgroundColor: ColorsS.black2020,
    body: SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [Image.asset('assets/images/Soura Details Screen.png'),
Align(alignment: Alignment.topCenter,
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text('${surasModel.suraName}', style: Styles.style,),
    )),
        Padding(
          padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
          child: SizedBox(
            height: 500,
            child: ListView.builder(itemCount: ayat.length,itemBuilder: (context, i){
              return Text('${ayat[i]}',style: Styles.styleSmall,textAlign: TextAlign.center,);
            }),
          ),
        )
        ],),
    ),);
  }


  Future<void> cutSura(int index)async{

      String suraline = await rootBundle.loadString('assets/Suras/$index.txt')   ;
     List<String> sura =  suraline.split('\n');


      ayat = sura;
print(ayat);
setState(() {

});

  }

}