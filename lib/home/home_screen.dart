import 'package:flutter/material.dart';

import '../taps/SignsTab.dart';
import '../taps/home_tap.dart';
import '../taps/pages_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xffe13495),
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: Color(0xffe13495)),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
            backgroundColor: Color(0xffccbbc1),
          ),
          BottomNavigationBarItem(
              activeIcon:
                  Icon(Icons.sim_card_alert_sharp, color: Color(0xffe13495)),
              icon: Icon(
                Icons.sim_card_alert_sharp,
                color: Colors.grey,
              ),
              label: 'Signs'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.list_sharp, color: Color(0xffe13495)),
              icon: Icon(
                Icons.list_sharp,
                color: Colors.grey,
              ),
              label: 'Pages'),
        ],
        selectedLabelStyle: TextStyle(color: Color(0xffe13495)),
      ),
      backgroundColor: Colors.white,
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs = [
    HomeTap(),
    SignsTab(),
    PagesScreen(),
  ];
}
