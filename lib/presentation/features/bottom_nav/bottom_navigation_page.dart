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
  PageController _pageController = PageController(
    initialPage: 0,
  );

  int _selectedPageIndex = 0;

  void selectPage(int page) {
    setState(() {
      _selectedPageIndex = page;
      _pageController.animateToPage(page,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (newPage) {
            setState(() => _selectedPageIndex = newPage);
          },
          children: [
            DisplayCurrentWaterIntakePage(),
            SettingsPage(),
          ],
        ),
      ),
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
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.blue,
        onTap: selectPage,
      ),
    );
  }
}
