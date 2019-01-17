import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/ListViewHor.dart';
import 'pages/tabbar.dart';

class Layout {

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.arrow_right),
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
              title: Text('TabBar'),
              onTap: () {
                Navigator.of(context).pushNamed(TabBarPage.tag);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: content
    );
  }
}