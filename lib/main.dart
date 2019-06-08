import 'package:flutter/material.dart';
import 'package:osg4_eudeka/pages/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Wisata Bekasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white
      ),
      home: FirstPage(),
    );
  }
}