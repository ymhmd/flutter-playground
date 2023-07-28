import 'package:flutter/material.dart';
import 'package:sample_app/screens/all_albums.dart';
import 'package:sample_app/screens/counter_redux.dart';
import 'package:sample_app/screens/counter.dart';
import 'package:sample_app/screens/home.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index );
  }

  static const List<Widget> tabScreens = <Widget>[
    HomePage(),
    AllAlbumsPage(),
    CounterPage(),
    CounterReduxPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: tabScreens.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Albums',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Counter',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Counter-Redux',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      );
}
