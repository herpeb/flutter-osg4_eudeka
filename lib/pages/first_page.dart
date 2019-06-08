import 'package:flutter/material.dart';
import 'package:osg4_eudeka/resources/text_style.dart';
import 'package:osg4_eudeka/resources/size.dart';
import 'package:osg4_eudeka/widgets/wisata_widget.dart';
import 'package:osg4_eudeka/model/wisata.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_backspace, color: Colors.black),
        title: Text(
          "Tempat Wisata Di Bekasi",
          style: appBarTextStyle,),
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: Colors.white,
          ),      
      body: ListView.separated(
        itemBuilder: (context, index){
          return WisataWidget(
            wisata: Wisatas[index],
            compactMode: false,
          );
        },
        separatorBuilder: (context, index){
          return SizedBox(
            height: size_20,
          );
        },
        itemCount: Wisatas.length
      ),
    );
  }
}