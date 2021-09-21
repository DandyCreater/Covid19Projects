import 'package:flutter/material.dart';
import 'package:flutter_application_4/dashboard.dart';
import 'package:flutter_application_4/information.dart';
import 'package:flutter_application_4/news.dart';

class AppMain extends StatefulWidget {
  const AppMain({Key key}) : super(key: key);

  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  int _selectedIndex = 0;
  final _layoutPage = [
    dashboard(),
    news(),
    info(),
  ];
  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("Info")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("News")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
