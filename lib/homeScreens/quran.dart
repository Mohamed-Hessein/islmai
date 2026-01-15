import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/core/cach_helper.dart';
import 'package:islamii/utils/images_path.dart';

import '../core/colors.dart';
import '../core/suras_model.dart';
import '../screens/reading_suea.dart';
import '../widgets/list_tile_suras.dart';

class Quran extends StatefulWidget {
   Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {

   @override
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    surasList();
    filterdList = suarsListMain;
  }
   List<String> surahNamesArabic = [
     "الفاتحة",
     "البقرة",
     "آل عمران",
     "النساء",
     "المائدة",
     "الأنعام",
     "الأعراف",
     "الأنفال",
     "التوبة",
     "يونس",
     "هود",
     "يوسف",
     "الرعد",
     "إبراهيم",
     "الحجر",
     "النحل",
     "الإسراء",
     "الكهف",
     "مريم",
     "طه",
     "الأنبياء",
     "الحج",
     "المؤمنون",
     "النور",
     "الفرقان",
     "الشعراء",
     "النمل",
     "القصص",
     "العنكبوت",
     "الروم",
     "لقمان",
     "السجدة",
     "الأحزاب",
     "سبأ",
     "فاطر",
     "يس",
     "الصافات",
     "ص",
     "الزمر",
     "غافر",
     "فصلت",
     "الشورى",
     "الزخرف",
     "الدخان",
     "الجاثية",
     "الأحقاف",
     "محمد",
     "الفتح",
     "الحجرات",
     "ق",
     "الذاريات",
     "الطور",
     "النجم",
     "القمر",
     "الرحمن",
     "الواقعة",
     "الحديد",
     "المجادلة",
     "الحشر",
     "الممتحنة",
     "الصف",
     "الجمعة",
     "المنافقون",
     "التغابن",
     "الطلاق",
     "التحريم",
     "الملك",
     "القلم",
     "الحاقة",
     "المعارج",
     "نوح",
     "الجن",
     "المزمل",
     "المدثر",
     "القيامة",
     "الإنسان",
     "المرسلات",
     "النبأ",
     "النازعات",
     "عبس",
     "التكوير",
     "الإنفطار",
     "المطففين",
     "الإنشقاق",
     "البروج",
     "الطارق",
     "الأعلى",
     "الغاشية",
     "الفجر",
     "البلد",
     "الشمس",
     "الليل",
     "الضحى",
     "الشرح",
     "التين",
     "العلق",
     "القدر",
     "البينة",
     "الزلزلة",
     "العاديات",
     "القارعة",
     "التكاثر",
     "العصر",
     "الهمزة",
     "الفيل",
     "قريش",
     "الماعون",
     "الكوثر",
     "الكافرون",
     "النصر",
     "المسد",
     "الإخلاص",
     "الفلق",
     "الناس",
   ];

   List<String> surahNamesEnglish = [
     "Al-Fatiha",
     "Al-Baqarah",
     "Aal-E-Imran",
     "An-Nisa",
     "Al-Ma'idah",
     "Al-An'am",
     "Al-A'raf",
     "Al-Anfal",
     "At-Tawbah",
     "Yunus",
     "Hud",
     "Yusuf",
     "Ar-Ra'd",
     "Ibrahim",
     "Al-Hijr",
     "An-Nahl",
     "Al-Isra",
     "Al-Kahf",
     "Maryam",
     "Ta-Ha",
     "Al-Anbiya",
     "Al-Hajj",
     "Al-Mu'minun",
     "An-Nur",
     "Al-Furqan",
     "Ash-Shu'ara",
     "An-Naml",
     "Al-Qasas",
     "Al-Ankabut",
     "Ar-Rum",
     "Luqman",
     "As-Sajda",
     "Al-Ahzab",
     "Saba",
     "Fatir",
     "Ya-Sin",
     "As-Saffat",
     "Sad",
     "Az-Zumar",
     "Ghafir",
     "Fussilat",
     "Ash-Shura",
     "Az-Zukhruf",
     "Ad-Dukhan",
     "Al-Jathiya",
     "Al-Ahqaf",
     "Muhammad",
     "Al-Fath",
     "Al-Hujurat",
     "Qaf",
     "Adh-Dhariyat",
     "At-Tur",
     "An-Najm",
     "Al-Qamar",
     "Ar-Rahman",
     "Al-Waqi'a",
     "Al-Hadid",
     "Al-Mujadila",
     "Al-Hashr",
     "Al-Mumtahina",
     "As-Saff",
     "Al-Jumu'a",
     "Al-Munafiqun",
     "At-Taghabun",
     "At-Talaq",
     "At-Tahrim",
     "Al-Mulk",
     "Al-Qalam",
     "Al-Haqqah",
     "Al-Ma'arij",
     "Nuh",
     "Al-Jinn",
     "Al-Muzzammil",
     "Al-Muddathir",
     "Al-Qiyamah",
     "Al-Insan",
     "Al-Mursalat",
     "An-Naba",
     "An-Nazi'at",
     "Abasa",
     "At-Takwir",
     "Al-Infitar",
     "Al-Mutaffifin",
     "Al-Inshiqaq",
     "Al-Buruj",
     "At-Tariq",
     "Al-A'la",
     "Al-Ghashiyah",
     "Al-Fajr",
     "Al-Balad",
     "Ash-Shams",
     "Al-Lail",
     "Ad-Duha",
     "Ash-Sharh",
     "At-Tin",
     "Al-Alaq",
     "Al-Qadr",
     "Al-Bayyina",
     "Az-Zalzalah",
     "Al-Adiyat",
     "Al-Qari'ah",
     "At-Takathur",
     "Al-Asr",
     "Al-Humazah",
     "Al-Fil",
     "Quraysh",
     "Al-Ma'un",
     "Al-Kawthar",
     "Al-Kafirun",
     "An-Nasr",
     "Al-Masad",
     "Al-Ikhlas",
     "Al-Falaq",
     "An-Nas",
   ];

   List<String> surahAyahCountAsString = [
     "7",
     "286",
     "200",
     "176",
     "120",
     "165",
     "206",
     "75",
     "129",
     "109",
     "123",
     "111",
     "43",
     "52",
     "99",
     "128",
     "111",
     "110",
     "98",
     "135",
     "112",
     "78",
     "118",
     "64",
     "77",
     "227",
     "93",
     "88",
     "69",
     "60",
     "34",
     "30",
     "73",
     "54",
     "45",
     "83",
     "182",
     "88",
     "75",
     "85",
     "54",
     "53",
     "89",
     "59",
     "37",
     "35",
     "38",
     "29",
     "18",
     "45",
     "60",
     "49",
     "62",
     "55",
     "78",
     "96",
     "29",
     "22",
     "24",
     "13",
     "14",
     "11",
     "11",
     "18",
     "12",
     "12",
     "30",
     "52",
     "52",
     "44",
     "28",
     "28",
     "20",
     "56",
     "40",
     "31",
     "50",
     "40",
     "46",
     "42",
     "29",
     "19",
     "36",
     "25",
     "22",
     "17",
     "19",
     "26",
     "30",
     "20",
     "15",
     "21",
     "11",
     "8",
     "8",
     "19",
     "5",
     "8",
     "8",
     "11",
     "11",
     "8",
     "3",
     "9",
     "5",
     "4",
     "7",
     "3",
     "6",
     "3",
     "5",
     "4",
     "5",
     "6",
   ];
   List<SurasModel> suarsListMain =[];
   List<SurasModel> filterdList =[];
TextEditingController controller = TextEditingController();
   surasList(){
     for(int i =0; i<surahNamesArabic.length;i++){
       suarsListMain.add( SurasModel(suarnameen: surahNamesEnglish[i],versesCount: surahAyahCountAsString[i],suraName: surahNamesArabic[i])

       );
     }
   }
   filter(dynamic q){
    if(filterdList.isEmpty){
      filterdList = suarsListMain;
    }else {
      filterdList = suarsListMain.where((model) {
        return model.suraName!.contains(q) || model.suarnameen!.toLowerCase().contains(q);
      }).toList();
    }
    setState(() {

    });
   }

  Widget build(BuildContext context) {
List<int> mostView = CachHelper.getList('item');
    return Container(

        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImagesPath.quranBackground),fit: BoxFit.fill)),
        child: Scaffold(backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0,left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(ImagesPath.headerLogo,width: 299,
              height: 171,

            ),
            Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: controller,
              onChanged: (value){
                filter(value);
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
          hintText: 'Sura Name',
          hintStyle: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
          prefixIcon: ImageIcon(AssetImage(ImagesPath.quranIcon,),color: ColorsS.color,size: 28,),
                enabledBorder:       OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xFFE2BE7F),))
              ,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xFFE2BE7F),))
                     ,
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xFFE2BE7F),))
              ,
                errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Color(0xFFE2BE7F),))

              ),),
            ),
          )
          ,
          Text('Most Recently ', style: TextStyle(
            color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold
          ),),
SizedBox(height: 10,),
        mostView.isNotEmpty ? SizedBox(height: 150,
          child:ListView.separated(separatorBuilder: (context, index){return SizedBox(width: 10,);},
              scrollDirection: Axis.horizontal,itemCount: mostView.length,
              itemBuilder: (context, index){

                SurasModel surasModel = SurasModel(suraName: surahNamesArabic[index],suarnameen: surahNamesEnglish[index],versesCount: surahAyahCountAsString[index]);
            return  Container(height: 150,width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: ColorsS.color),child: Row(children: [Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center
                ,children: [Text(textAlign: TextAlign.start,'${suarsListMain[mostView[index]].suarnameen}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),Text('${suarsListMain[mostView[index]].suraName}',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),Text('${suarsListMain[mostView[index]].versesCount} verses',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),],)),Expanded(child: Image.asset('assets/images/img_most_recent.png'))],),);}),

          ) : SizedBox() ,
          Expanded(
            child: ListView.separated(itemBuilder: (context, index){
            return InkWell(onTap: ()async{
           await   CachHelper.setList(index);
           setState(() {

           });
              Navigator.pushNamed(context, ReadingSuea.routeName,arguments:{
              'model':  SurasModel(suarnameen: filterdList[index].suarnameen,suraName: filterdList[index].suraName, versesCount: filterdList[index].versesCount),
                'i': index+ 1
              } );
            },
                child: ListTileOfSuras(number: index + 1,surasModel: SurasModel(suarnameen: filterdList[index].suarnameen,suraName: filterdList[index].suraName, versesCount: filterdList[index].versesCount)));
               }, separatorBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Divider(thickness: 2,height: 1,),
              );
            }, itemCount: filterdList.length),
          ),
          ],),
        ),));
  }
}