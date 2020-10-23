import 'package:HydrateMe/presentation/features/display_current_water_intake/pages/display_current_water_intake_page.dart';
import 'package:HydrateMe/presentation/features/settings/settings_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  static const BOTTOM_NAVIGATION_PAGE = '/home';

  BottomNavigationPage({Key key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  static List<Widget> _bottonNavigationOptions = <Widget>[
    DisplayCurrentWaterIntakePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int tappedIndex) {
    setState(() {
      _selectedIndex = tappedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottonNavigationOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
