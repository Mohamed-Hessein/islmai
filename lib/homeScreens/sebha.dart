import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
   Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {


int index = 0;

List<String> zekrList = ['سبحان الله','الحمد لله','لااله الا الله','الله أكبر',];
  String zekr = '' ;
int counter =0;

double rotate =0.0;
late double valueOfRoute = 50.0 ;

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    zekr = zekrList[0];
  }
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/sebha_background.png'))),
      child: Scaffold(

        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(

            spacing: 15,
            children: [Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/header_logo.png', width: 300,
                height: 130,)),
            Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white),)

          ,
            Stack(

              alignment: Alignment.center,
              children: [

                Center(
                  child: Transform.rotate(angle: 0.0 + valueOfRoute,
                  alignment: Alignment.center,
                  transformHitTests: true,
                  child:Image.asset('assets/images/Sebha_body.png') ,),
                ),

              InkWell(
                onTap: (){



                  setState(() {
                    valueOfRoute= valueOfRoute +0.20;
                    counter++;
                    if(counter ==33 ){
                      counter =0;

                      index++;


               if(index == zekrList.length){
     index =0;
               }
                      zekr = zekrList[index];

                    }



                  });

                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(zekr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white),)

                    ,
                    Text('$counter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white),)
                  ],),
                ),
              )],
            )
            ],),
        ),
      ),);
  }
}
