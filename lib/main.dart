import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/ListViewHor.dart';
import 'pages/ListViewSlide.dart';
import 'pages/tabbar.dart';
import 'pages/DragNDropPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    HomePage.tag: (context) => HomePage(),
    ListViewHor.tag: (context) => ListViewHor(),
    ListViewSlide.tag: (context) => ListViewSlide(),
    TabBarPage.tag: (context) => TabBarPage(),
    DragNDropPage.tag: (context) => DragNDropPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
      routes: routes,
    );
  }
}


