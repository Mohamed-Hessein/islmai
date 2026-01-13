import 'package:flutter/material.dart';
import 'package:islami/screens/reading_hadith.dart';
import 'package:islami/screens/reading_suea.dart';

import 'HomeScreens.dart';
import 'introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/',
        routes: {
          '/' : (context) =>IntroductionScreenS(),
          '/home' : (context) => Homescreens(),
          ReadingSuea.routeName: (context) => ReadingSuea(),
          ReadingHadith.routeName : (context) => ReadingHadith(),
        },
      debugShowCheckedModeBanner: false,
 );
  }
}

