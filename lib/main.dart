import 'package:flutter/material.dart';
import 'drawer_descrp/drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prakash',
      home: CurvedDrawer(),
    );
  }
}

