import 'package:flutter/material.dart';

import 'package:tips_and_tricks/layout.dart';

class ListViewHor extends StatefulWidget {

  static final tag = 'ListViewHor-page';
  
  ListViewHor({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListViewHorState createState() => _ListViewHorState();
}

class _ListViewHorState extends State<ListViewHor> {
  
  @override
  Widget build(BuildContext context) {

    ListView content = ListView(
      physics: PageScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.blue[100],
          width: MediaQuery.of(context).size.width,
          child: Center(child: Text('Pagina 1')),
        ),
        Container(
          color: Colors.blueGrey[100],
          width: MediaQuery.of(context).size.width,
          child: Center(child: Text('Pagina 2')),
        ),
        Container(
          color: Colors.green[100],
          width: MediaQuery.of(context).size.width,
          child: Center(child: Text('Pagina 3')),
        )
      ],
    );

    return Layout.getContent(context, content);
  }
}