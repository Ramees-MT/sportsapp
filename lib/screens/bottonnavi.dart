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
    MatchScreen(), 
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
        unselectedItemColor: const Color(0xffAAAAAA),
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
            icon: _buildNavItem(0, 'Home', Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(1, 'Explore', Icons.explore_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(2, 'Standings', Icons.insert_chart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(3, 'My Profile', Icons.person_outline_outlined),
            label: '',
          ),
        ],
      ),
      body: screens[selectedindex],
    );
  }

  Widget _buildNavItem(int index, String label, IconData icon) {
    bool isSelected = selectedindex == index;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isSelected
            ? Text(
                label, // Show text when selected
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            : Icon(
                icon, // Show icon when not selected
                size: 30,
                color: Colors.grey,
              ),
        if (isSelected)
          const Padding(
            padding: EdgeInsets.only(top: 4), // Space between text and dot
            child: CircleAvatar(
              radius: 3, // Size of the dot
              backgroundColor: Colors.blue, // Color of the dot
            ),
          ),
      ],
    );
  }
}