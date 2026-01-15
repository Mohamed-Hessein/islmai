
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/utils/images_path.dart';

import '../core/suras_model.dart';

class ListTileOfSuras extends StatelessWidget {
  ListTileOfSuras({super.key, required this.surasModel, required  this.number});
  int number;
  SurasModel surasModel = SurasModel();


  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListTile(dense: true,trailing: Text('${surasModel.suraName}', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),subtitle: Text('${surasModel.versesCount } verses',style: TextStyle(color: Colors.white,fontSize: 14),),title: Text('${surasModel.suarnameen}',style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),) ,leading: Stack(alignment: Alignment.center,
            children: [
              Image.asset(ImagesPath.imgSurNumberFrame),Text('${number.toString()}', style: TextStyle(color: Colors.white),),]),),
      );
  }
}