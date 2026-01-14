import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/colors.dart';
import '../core/model/hadith_model.dart';
import '../core/styles.dart';
class ReadingHadith extends StatefulWidget {
  ReadingHadith({super.key});

  static String routeName  = '/reading hadith';

  @override
  State<ReadingHadith> createState() => _ReadingSueaState();
}

class _ReadingSueaState extends State<ReadingHadith> {
  List ayat =[];
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }
  Widget build(BuildContext context) {

    HadithModel model = ModalRoute.of(context)!.settings.arguments as HadithModel;


    return Scaffold(appBar: AppBar(backgroundColor: ColorsS.black2020,

      automaticallyImplyActions: false,
      leading: InkWell( onTap: (){
        Navigator.pop(context);
      },
          child: Icon(Icons.arrow_back, color: ColorsS.color,)),
      title: Text('${model.title}', style: Styles.styleSmall,),centerTitle: true,



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
                  child: Text('${model.title}', style: Styles.style,),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20,right: 20),
              child: SizedBox(
                height: 500,
                child: ListView.builder(itemCount: model.body.length,itemBuilder: (context, i){
                  return Text('${model.body[i]}',style: Styles.styleSmall,textAlign: TextAlign.center,);
                }),
              ),
            )
          ],),
      ),);
  }



}