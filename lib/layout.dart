import 'package:flutter/material.dart';
import 'package:tips_and_tricks/pages/DragNDropPage.dart';

import 'pages/home.dart';
import 'pages/ListViewHor.dart';
import 'pages/ListViewSlide.dart';
import 'pages/tabbar.dart';

class Layout {

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.arrow_right),
              // leading: ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: FadeInImage.assetNetwork(
              //     placeholder: 'assets/images/ellipsis-64.gif',
              //     image: 'https://i.ibb.co/mFNcFMw/iconfinder-go-home-118770.png',
              //     width: 32,
              //     height: 32,
              //   ),
              // ),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pushNamed(HomePage.tag);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text('ListView Horizontal'),
              onTap: () {
                Navigator.of(context).pushNamed(ListViewHor.tag);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text('ListView Slide'),
              onTap: () {
                Navigator.of(context).pushNamed(ListViewSlide.tag);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text('TabBar'),
              onTap: () {
                Navigator.of(context).pushNamed(TabBarPage.tag);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text('Drag \'n Drop'),
              onTap: () {
                Navigator.of(context).pushNamed(DragNDropPage.tag);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Thizer'),
      ),
      body: content
    );
  }
}