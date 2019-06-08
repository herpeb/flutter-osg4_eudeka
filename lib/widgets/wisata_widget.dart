import 'package:flutter/material.dart';
import 'package:osg4_eudeka/model/wisata.dart';
import 'package:osg4_eudeka/resources/size.dart';
import 'package:osg4_eudeka/resources/text_style.dart';


class WisataWidget extends StatelessWidget {

  final Wisata wisata;
  final bool compactMode;

  WisataWidget({this.wisata, this.compactMode = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          wisata.imagePath,
          height: 180,
          width: 120,
          fit: BoxFit.fitHeight,
        ),
        SizedBox(width: size_20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(wisata.name, style: nameTextStyle),
            SizedBox(height: size_8),
            Text(wisata.jambuka, style: jambukaTextStyle,),
          ],
        )
      ],
    );
  }
}