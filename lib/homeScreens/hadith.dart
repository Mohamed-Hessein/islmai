import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/core/styles.dart';
import 'package:islami/screens/reading_hadith.dart';

import '../core/model/hadith_model.dart';

class Hadith extends StatefulWidget {
  const Hadith({super.key});

  @override
  State<Hadith> createState() => _HadithState();
}

class _HadithState extends State<Hadith> {

  List<HadithModel> hadithBodyLines = [];

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAllHadith();
  }

  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage('assets/images/Background (1).png'),
            fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0, vertical: 16),
              child: Column(

                children: [Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/header_logo.png', width: 300,
                      height: 130,)),


                  Padding(
                    padding: const EdgeInsets.only(top: 55),
                    child: CarouselSlider(
                      options: CarouselOptions(height: 500.0,),
                      items: hadithBodyLines.map((m) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, ReadingHadith.routeName, arguments:
                                    m,
                                  );
                                },
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Image.asset('assets/images/Hadith Card.png',
                                        height: 618, width: 320, fit: BoxFit.fill
                                        ,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Text('${m.title}',
                                          style: Styles.style!.copyWith(
                                              color: ColorsS.black2020),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 40.12),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 480, width: 300,
                                            child: ListView.builder(
                                              itemCount: m.body.length,
                                              itemBuilder: (context, index) {



                                                return Center(child: Text(softWrap: true,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                                                  maxLines: 8,
                                                  '${m.body[index]}',
                                                  style: Styles.styleSmall!
                                                      .copyWith(color: ColorsS
                                                      .black2020, fontSize: 18),));
                                              }

                                              ,
                                            ),


                                          ),
                                        ),
                                      )
                                    ]
                                ),
                              ),
                            );
                          },
                        );
                      }).toSet().toList(),
                    ),
                  )
                ],),
            )
        ));
  }

  getHadith(int i ) async {
    String allHadith = await rootBundle.loadString(
        'assets/hadiths/Hadeeth/h$i.txt');
    List<String> getTitleOfHadith = await allHadith.split('\n');
    String titleOfHAdith = getTitleOfHadith[0];
    getTitleOfHadith.removeAt(0);
    List<String> body = getTitleOfHadith;
    print('vkieohth$getTitleOfHadith');
    hadithBodyLines.add(HadithModel(titleOfHAdith, body));

    //

    setState(() {

    });
  }


  Future<void> loadAllHadith() async {
    for (int i = 1; i <= 50; i++) {
      await getHadith(i);
    }
  }
}