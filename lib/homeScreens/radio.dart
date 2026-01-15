import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class Radioo extends StatefulWidget {
   Radioo({super.key});

  @override
  State<Radioo> createState() => _RadiooState();
}

class _RadiooState extends State<Radioo> {
bool isRectires  = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/radio_background.png'))),
      child: Scaffold(backgroundColor: Colors.transparent,

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
          Image.asset('assets/images/header_logo.png',width: 299,
            height: 171,

          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: ColorsS.color,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),onPressed: (){
                isRectires = false;
                    setState(() {

                    });
              }, child: Text(style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),'Radio')))
             ,  Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),backgroundColor: Color.fromRGBO(32, 32, 32, 0.7)),onPressed: (){

               setState(() {
                 isRectires = true;
               });
               print('jsjowgre');
                }, child: Text(style:  TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),'Reciters')))


              ],)

            ,
            isRectires == true ? SizedBox(
              height: 480,
              child: ListView.separated(itemBuilder: (context, i){
                return   Container(
                  decoration: BoxDecoration(color: ColorsS.color,borderRadius: BorderRadius.circular(20)),
                  width: 400,
                  height: 140,
                  child:  Stack(
                    alignment: Alignment.center,
                    children: [  Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/images/radio_header_card.png',width: 400,
                        height: 97,),
                    ),


                      Align(
                          alignment: Alignment.topCenter,
                          child: Text(' Ibrahim Al-Akdar', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))
                      ,Align(
                          alignment: Alignment.center,
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [SizedBox(width: 20,),IconButton(iconSize: 44,onPressed: (){}, icon:ImageIcon(AssetImage('assets/images/Polygon 2.png'))),IconButton(iconSize: 30,onPressed: (){}, icon:ImageIcon(AssetImage('assets/images/Volume High.png')))],)),

                    ],) ,);
              }, separatorBuilder: (context, i){
                return SizedBox(height: 15,);
              }, itemCount: 5),
            ):   SizedBox(
            height: 480,
            child: ListView.separated(itemBuilder: (context, i){
              return   Container(
                decoration: BoxDecoration(color: ColorsS.color,borderRadius: BorderRadius.circular(20)),
                width: 400,
                height: 140,
                child:  Stack(
                  alignment: Alignment.center,
                  children: [  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('assets/images/radio_header_card.png',width: 400,
                      height: 97,),
                  ),


                    Align(
                        alignment: Alignment.topCenter,
                        child: Text('Radio Ibrahim Al-Akdar', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))
                    ,Align(
                        alignment: Alignment.center,
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [SizedBox(width: 20,),IconButton(iconSize: 44,onPressed: (){}, icon:ImageIcon(AssetImage('assets/images/Polygon 2.png'))),IconButton(iconSize: 30,onPressed: (){}, icon:ImageIcon(AssetImage('assets/images/Volume High.png')))],)),

                  ],) ,);
            }, separatorBuilder: (context, i){
              return SizedBox(height: 15,);
            }, itemCount: 5),
          )
        ],),
      ),),);
  }
}
