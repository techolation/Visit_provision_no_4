import 'package:flutter/material.dart';
import 'package:visit_provision4_2020/HomePage/picnic.dart';
import 'package:visit_provision4_2020/HomePage/Homestay.dart';
import 'package:visit_provision4_2020/HomePage/ReligiousPlace.dart';
import 'package:visit_provision4_2020/HomePage/Trekking.dart';
import 'package:visit_provision4_2020/HomePage/Scenery.dart';
import 'package:visit_provision4_2020/HomePage/Titlepage.dart';
import 'package:visit_provision4_2020/Explore/explorePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Pokhara'),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              ImageCarousel(),
              Titlepage(),
              PicnicList(),
              Homestay(),
              Scenery(),
              ReligiousPlace(),
              Trekking(),
            ],
          ),
        ),
      ),
    );
  }
}
