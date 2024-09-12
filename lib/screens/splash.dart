import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sportsapp/model/categorymodel.dart';
import 'package:sportsapp/screens/bottonnavi.dart';
import 'package:sportsapp/services/apiservices.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen2> {
  // State to keep track of the selected sport
  String _selectedSport = '';

  // Function to select a sport
  void _selectSport(String sport) {
    setState(() {
      _selectedSport = sport;
    });
  }

  // Function to get the image path based on sport name
  String _getImagePathForSport(String sport) {
    switch (sport) {
      case 'UEFA Champions League':
        return 'asset/images/laliga.jpg';
      case 'PL':
        return 'asset/images/premierleaguelogo.png';
      case 'UEFA Conference League':
        return 'asset/images/conference.png';
      case 'Nations league':
        return 'asset/images/nations.jpg';
      case 'UEFA Super Cup':
        return 'asset/images/supercup.jpeg';
      case 'UEFA Europa League':
        return 'asset/images/ueropa.png';
      case "UEFA Women's Champions League":
        return 'asset/images/download.png';
      case 'UEFA Nations League':
        return 'asset/images/nationsl.jpg';
      default:
        return 'asset/images/ueropa.png'; // Provide a default image path if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF182039),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              'Explore Football Tournaments !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'You can choose only one',
              style: TextStyle(
                color: Colors.white.withOpacity(0.2),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 40),
            FutureBuilder<List<CategoryModel>>(
              future: Apiservices().category(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error.toString()}');
                } else {
                  final categories = snapshot.data ?? [];

                  return Expanded(
                    child: ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final sportName = categories[index].name ?? 'Unknown';
                        return _buildSportTile(sportName);
                      },
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFF347AF0), // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 140,
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each sport tile
  Widget _buildSportTile(String sport) {
    return GestureDetector(
      onTap: () => _selectSport(sport),
      child: Card(
        color: _selectedSport == sport
            ? Colors.orange // Change the color when selected
            : const Color(0xFF1C223D), // Default card color
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: _selectedSport == sport
                    ? Colors.orange
                    : Colors.white.withOpacity(0.1),
                radius: 30,
                child: Image.asset(
                  _getImagePathForSport(sport),
                  height: 40,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                sport,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
