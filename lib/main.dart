import 'package:flutter/material.dart';
import 'package:islamii/core/cach_helper.dart';
import 'package:islamii/screens/reading_hadith.dart';
import 'package:islamii/screens/reading_suea.dart';

import 'HomeScreens.dart';
import 'introduction_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

 await CachHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: CachHelper.getBool('first') == true? '/home' : '/' ,
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

