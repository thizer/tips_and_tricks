import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:tips_and_tricks/layout.dart';

class ListViewSlide extends StatelessWidget {

  static final String tag = 'listview-slide-page';

  @override
  Widget build(BuildContext context){

    Widget content = ListView.builder(
      itemCount: 9,
      itemBuilder: (BuildContext context, int pos) {
        return Slidable(
          delegate: SlidableDrawerDelegate(),
          actionExtentRatio: 0.2,
          child: Container(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                child: Text('${pos + 1}')
              ),
              title: Text('Item de número: ${pos + 1}'),
            ),
          ),
          actions: <Widget>[
            IconSlideAction(
              caption: 'Arquivar',
              icon: Icons.archive,
              color: Colors.grey,
              onTap: () { print('Arquivar'); },
            ),
            IconSlideAction(
              caption: 'Compartilhar',
              icon: Icons.share,
              color: Colors.indigo,
              onTap: () { print('Compartilhar'); },
            )
          ],
          secondaryActions: <Widget>[
            IconSlideAction(
              caption: 'Mais',
              icon: Icons.more_horiz,
              color: Colors.black45,
              onTap: () { print('Mais coisas'); },
            ),
            IconSlideAction(
              caption: 'Deletar',
              icon: Icons.delete,
              color: Colors.red,
              onTap: () { print('Deletar'); },
            )
          ],
        );
      },
    );

    return Layout.getContent(context, content);
  }
}