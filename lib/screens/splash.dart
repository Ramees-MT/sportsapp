import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              'What sport do \nyou interest?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You can choose only one',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.2), fontSize: 14),
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSportColumn('Volleyball', 'asset/images/image 1.png'),
                _buildSportColumn('Football', 'asset/images/image 2.png'),
                _buildSportColumn('Soccer', 'asset/images/image 3.png'),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSportColumn('Baseball', 'asset/images/image 4.png'),
                _buildSportColumn('Tennis', 'asset/images/image 7.png'),
                _buildSportColumn('Basketball', 'asset/images/baseball_26be 1.png'),
              ],
            ),
            SizedBox(height: 130,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF347AF0), // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 140,
                ),
              ),
              child: Text(
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
                child: Text('Skip', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget to build each sport column
  Widget _buildSportColumn(String sport, String imagePath) {
    return GestureDetector(
      onTap: () => _selectSport(sport),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: _selectedSport == sport ? Colors.orange : Colors.white.withOpacity(0.1),
            radius: 50,
            child: Image.asset(imagePath, height: 50),
          ),
          Text(
            sport,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
