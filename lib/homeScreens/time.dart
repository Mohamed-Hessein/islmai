import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/core/colors.dart';
import 'package:islamii/core/styles.dart';
import 'package:islamii/utils/images_path.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  late ScrollController scrollController;
double  salaTimeHeith = 120;
double salaBigTimeHeghit = 270;
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
    // scrollController.addListener((){
    //   if(scrollController.offset == 3){
    //     print('bczbsrzhyuetu');
    //   }
    // });
  }
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage(ImagesPath.timeBackground))),
      child: SafeArea(

        child: Scaffold(backgroundColor: Colors.transparent,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            SizedBox(height: 15,),
              Image.asset(ImagesPath.headerLogo,width: 299,
                height: 171,
            
              ),
            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
              child: Container(
            
                height: 270,width: 300,
                  decoration: BoxDecoration(color: Color(0xFF856B3F),borderRadius: BorderRadius.circular(25)),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(ImagesPath.timePlace,width: 400,height: 300,),
            
            Align(
              alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text('Pray Time',style: TextStyle(fontSize: 20,color:Color(0xFF856B3F) ,fontWeight:FontWeight.bold ),),
            
            
                    Text('Tuesday',style: TextStyle(fontSize: 20,color:Colors.black ,fontWeight:FontWeight.bold ),),
            
                  ],
                ))
                   ,
            
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: (){
            
            
                            },
                            child: SizedBox(
                              height: 180,
            
                              child: ListView.separated(
            
                                controller: scrollController,
                                padding: EdgeInsets.only(top: 25),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index){
                                  return SizedBox(width: 5,);
                                },
                               itemBuilder: (context, i){  return Container(
                                 width: 100,
            
                              child:                   Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('ASR',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),Text('04:38',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),),Text('PM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)],),
                              height: 120,                           decoration: BoxDecoration(image: DecorationImage(image: AssetImage( ImagesPath.salahTimeBorder,)),),);}, itemCount: 5,),
                            ),
                          ))
            
            
                 ,     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom: 15.0),
                       child: Align(
                              alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Next Pray -',style: TextStyle(fontSize: 20,color:Color(0xFF856B3F) ,fontWeight:FontWeight.bold ),),
            
                                    Text('02:32',style: TextStyle(fontSize: 20,color:Colors.black ,fontWeight:FontWeight.bold ),),
            
            
                                  ],
                                )),
                     ),
            
                     Padding(
                       padding: const EdgeInsets.only(bottom: 20.0,left:25 ),
                       child: Align(
                         alignment: Alignment.bottomLeft,
                           child: ImageIcon(AssetImage(ImagesPath.soundMute),size:23 ,)),
                     )
                   ],
                 ),
            
            
                    ],
                  )),
            )
            ,
            Text('Azkar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),textAlign: TextAlign.start,),
                SizedBox(
                  height: 260,
                  child: ListView(

                    padding: EdgeInsets.only(bottom: 20),
                    scrollDirection: Axis.horizontal,

                    children: [Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.fromBorderSide(BorderSide(color: Color(0xFFE2BE7F,)))),
                    width: 180,
                    height: 260,
                    child: Column(
                      children: [
                        Image.asset(ImagesPath.helalImage,width: 140,height: 200,),
                        Text('Evening Azkar',style: Styles.styleSmall!.copyWith(color: Colors.white),softWrap: true,overflow: TextOverflow.clip,)
                      ],
                    ),),
                      SizedBox(width: 10,),

                      Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.fromBorderSide(BorderSide(color: Color(0xFFE2BE7F,)))),
                      width: 180,
                      height: 260,
                      child: Column(
                        children: [
                          Image.asset(ImagesPath.helalImage,width: 140,height: 200,),

                          Text('Evening Azkar',style: Styles.styleSmall!.copyWith(color: Colors.white),softWrap: true,overflow: TextOverflow.clip,)
                        ],
                      ),)],),
                )
            ],),
          ),
        ),
        ),
      ),);

  }
}
