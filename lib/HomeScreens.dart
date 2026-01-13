import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/homeScreens/hadith.dart';
import 'package:islami/homeScreens/quran.dart';
import 'package:islami/homeScreens/radio.dart';
import 'package:islami/homeScreens/sebha.dart';
import 'package:islami/homeScreens/time.dart';
class Homescreens extends StatefulWidget {
   Homescreens({super.key});

  @override
  State<Homescreens> createState() => _HomescreensState();
}

class _HomescreensState extends State<Homescreens> {
   int index =0 ;
List<Widget> pages = [Quran(), Hadith(),Sebha(),Radioo(),Time()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
selectedItemColor: Colors.white,
          onTap: (value){
          index = value;
          setState(() {

          });
          },
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: ColorsS.color,
          type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_quran (1).png')),label: 'quran',activeIcon:Container(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
          decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(20)),
            child: ImageIcon(AssetImage('assets/images/ic_quran (1).png'))) )
      ,   BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/hadith.png')),label: 'Hadith',activeIcon:Container(
    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(20)),
    child: ImageIcon(AssetImage('assets/images/hadith.png'))) ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'Sebha',activeIcon:Container(
    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(20)),
    child: ImageIcon(AssetImage('assets/images/sebha.png'))) ),
         BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio-svgrepo-com 1.png')),label: 'Radio',activeIcon:Container(
    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(20)),
    child: ImageIcon(AssetImage('assets/images/radio-svgrepo-com 1.png'))) )
        ,  BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_item.png')),label: 'Time',activeIcon:Container(
    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(20)),
    child: ImageIcon(AssetImage('assets/images/ic_item.png'))) ),






      ]),
      body: pages[index],
    );
  }
}
