import 'package:flutter/material.dart';
import 'package:tips_and_tricks/layout.dart';

class DragNDropPage extends StatefulWidget {

  static String tag = 'dragndrop-page';

  @override
  _DragNDropPageState createState() => _DragNDropPageState();
}

class _DragNDropPageState extends State<DragNDropPage> with TickerProviderStateMixin {

  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    
    var content = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Draggable(
          data: 1,
          child: Icon(Icons.directions_walk, size: 72),
          childWhenDragging: Icon(Icons.directions_run, size: 72, color: Colors.blue),
          feedback: Icon(Icons.directions_run, size: 72),
        ),
        Container(
          child: DragTarget(
            builder: (context, List<int> candidateData, rejectedData) {
              
              if (accepted) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      accepted = false;
                    });
                  },
                  child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(20),
                    child: Text('Acertô mizeravi!', style: TextStyle(color: Colors.white))
                  )
                );
              } else {
                return Container(
                  color: Colors.black54,
                  padding: EdgeInsets.all(20),
                  child: Text('Arraste para cá!', style: TextStyle(color: Colors.white))
                );
              }
            }, onWillAccept: (data) {
              print('1');
              return true;
            }, onAccept: (data) {
              print('2');
              accepted = true;
            }
          ),
        )
      ]
    );

    return Layout.getContent(context, Center(child: content));
  }
}