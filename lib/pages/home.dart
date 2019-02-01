import 'package:flutter/material.dart';

import 'package:tips_and_tricks/layout.dart';

class HomePage extends StatefulWidget {

  static final tag = 'home-page';
  
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {

    var content = SingleChildScrollView(
      child: Container(
        color: Colors.black54,
        height: MediaQuery.of(context).size.height - 80,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              Text('Thizer Tips \'n Tricks', style: TextStyle(color: Colors.white, fontSize: 24)),
              SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/logo-sem-fundo.png', scale: 1.5),
              )
            ],
          )
        ),
      ),
    );

    return Layout.getContent(context, content);
  }
}