import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:rabbittype/home.dart';

import 'Rabbit.dart';
import 'about.dart';
import 'feed.dart';
import 'home.dart';
// import 'introscreen.dart';

class BarNavy extends StatefulWidget {
  @override
  _BarNavyState createState() => _BarNavyState();
}

class _BarNavyState extends State<BarNavy> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    RabbitPage(),
    FeedPage(),
    AboutMePage()
  ];
  PageController _pageController;
  void onTappedBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffcc5c),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blueGrey,
        onTap: onTappedBar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Top 10'), icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
            title: Text('Feed'),
            icon: Icon(Icons.fastfood),
          ),
          BottomNavigationBarItem(
            title: Text('Aanimation'),
            icon: Icon(Icons.face),
          ),
        ],
      ),
    );
  }
}
