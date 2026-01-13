
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/styles.dart';import 'package:islami/core/colors.dart';

class IntroductionScreenS extends StatelessWidget {
   IntroductionScreenS({super.key});
List<PageViewModel> pageViewList = [PageViewModel(
  titleWidget: Text('Welcome To Islmi App',style:  Styles.style,
  ),
  body: '',
  image: Center(child: Image.asset('assets/images/intro1x.png')),
),PageViewModel(
  titleWidget: Text('Welcome To Islmi App',textAlign: TextAlign.center,style:  Styles.style,

  ),
bodyWidget: Text('We Are Very Excited To Have You In Our Community',textAlign: TextAlign.center,style:  Styles.styleSmall,),
  image: Center(child: Image.asset('assets/images/inro21x.png')),
),PageViewModel(
  titleWidget: Text('Reading the Quran',textAlign: TextAlign.center,style:  Styles.style,
  ),

  bodyWidget: Text('Read, and your Lord is the Most Generous',textAlign: TextAlign.center,style:  Styles.styleSmall,),
  image: Center(child: Image.asset('assets/images/intro3.png')),
),PageViewModel(
  titleWidget: Text('Bearish',textAlign: TextAlign.center,style:  Styles.style,
  ),

  bodyWidget: Text('Read, and your Lord is the Most Generous',textAlign: TextAlign.center,style:  Styles.styleSmall,),
  image: Center(child: Image.asset('assets/images/intro4.png')),
),PageViewModel(
  titleWidget: Text('Holy Quran Radio',textAlign: TextAlign.center,style:  Styles.style,
  ),

  bodyWidget: Text('You can listen to the Holy Quran Radio through the application for free and easily',textAlign: TextAlign.center,style:  Styles.styleSmall,),
  image: Center(child: Image.asset('assets/images/intro 5.png')),
),



];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(pages: pageViewList,showDoneButton: true,
    globalBackgroundColor: Color(0xFF202020),

    onDone: (){
Navigator.pushNamed(context,     '/home');
    },dotsDecorator: DotsDecorator(activeColor: ColorsS.color,activeSize: Size(20, 10),activeShape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))
      ,bodyPadding: EdgeInsets.only(top: 250),
globalHeader: Image.asset('assets/images/header_logo.png', width: 291,height: 171,),
      done: Text('Done' , style: Styles.style,),
      back: Icon(Icons.arrow_back , color: ColorsS.color,),
      skip: Text('Skip' , style: Styles.style,),
      next: Text('Next' , style: Styles.style,),
    showSkipButton: true,
    showNextButton:  true,);
  }
}
