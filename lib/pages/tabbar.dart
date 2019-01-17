import 'package:flutter/material.dart';

import 'package:tips_and_tricks/layout.dart';

class TabBarPage extends StatefulWidget {

  static final tag = 'tabbar-page';

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    final content = Column(
      children: <Widget>[
        TabBar(
          labelColor: Colors.blueGrey,
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: 'Inicio'),
            Tab(text: 'Meio'),
            Tab(text: 'Fim')
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height - 80 - 49.2,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Container(
                color: Colors.deepOrange,
                child: Center(
                  child: Text('Conteúdo inicial'),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: Center(
                  child: Text('Conteúdo do meio'),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text('Conteúdo final'),
                ),
              )
            ]
          ),
        ),
      ],
    );

    return Layout.getContent(context, content);
  }
}