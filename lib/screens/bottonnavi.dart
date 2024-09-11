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
        showSelectedLabels: false, // Hide default labels
        showUnselectedLabels: false, // Hide default labels
        unselectedItemColor: Color(0xffAAAAAA),
        elevation: 1,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: selectedindex == 0
                ? Text(
                    'Home', // Show text when selected
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                : Icon(
                    Icons.home_outlined, // Show icon when not selected
                    size: 30,
                    color: Colors.grey,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: selectedindex == 1
                ? Text(
                    'Explore', // Show text when selected
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                : Icon(
                    Icons.explore_outlined, // Show icon when not selected
                    size: 30,
                    color: Colors.grey,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: selectedindex == 2
                ? Text(
                    'Standings', // Show text when selected
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                : Icon(
                    Icons.insert_chart_outlined, // Show icon when not selected
                    size: 30,
                    color: Colors.grey,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: selectedindex == 3
                ? Text(
                    'My Profile', // Show text when selected
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                : Icon(
                    Icons.person_outline_outlined, // Show icon when not selected
                    size: 30,
                    color: Colors.grey,
                  ),
            label: '',
          ),
        ],
      ),
      body: screens[selectedindex],
    );
  }
}
