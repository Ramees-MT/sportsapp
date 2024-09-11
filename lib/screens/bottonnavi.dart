import 'package:flutter/material.dart';
import 'package:sportsapp/screens/explorescreen.dart';
import 'package:sportsapp/screens/matchdetailscreen.dart';
import 'package:sportsapp/screens/profilepage.dart';
import 'package:sportsapp/screens/standingscreen.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List<Widget> screens = [
    MatchScreen(),  // Add MatchScreen to the list of screens
    NewsHomePage(),
    StandingScreen(),
    Profilepage(),
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Color(0xffAAAAAA),
        elevation: 1,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.insert_chart_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              size: 30,
              
            ),
            label: '',
          ),
        ],
      ),
      body: screens[selectedindex],
    );
  }
}
