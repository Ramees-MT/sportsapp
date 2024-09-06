import 'package:flutter/material.dart';

class Standingdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaLigaScreen(),
    );
  }
}

class LaLigaScreen extends StatefulWidget {
  @override
  _LaLigaScreenState createState() => _LaLigaScreenState();
}

class _LaLigaScreenState extends State<LaLigaScreen> {
  String selectedTab = 'All'; // Default selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1226), // Background color
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1226),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button
          },
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.flag, color: Colors.white), // Example for Spain Flag Icon
            SizedBox(width: 8),
            Text('Spain', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // La Liga Logo and Title
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/images/laliga.png'), // Replace with your actual image path
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 10),
              Text(
                'La Liga',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              // Tab Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTabButton('All', selectedTab == 'All'),
                  _buildTabButton('Home', selectedTab == 'Home'),
                  _buildTabButton('Away', selectedTab == 'Away'),
                ],
              ),
              SizedBox(height: 20),
              // Points Table
              _buildPointsTable(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabButton(String title, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedTab = title; // Update the selected tab
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Color(0xFFFF6E4E) : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          side: BorderSide(color: isSelected ? Colors.transparent : Colors.white),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildPointsTable() {
    return Column(
      children: [
        // Table Header
        Container(
          width: 800,
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('#', style: TextStyle(color: Colors.white)),
              Text('Team', style: TextStyle(color: Colors.white)),
              Text('D', style: TextStyle(color: Colors.white)),
              Text('L', style: TextStyle(color: Colors.white)),
              Text('Ga', style: TextStyle(color: Colors.white)),
              Text('Gd', style: TextStyle(color: Colors.white)),
              Text('Pts', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        SizedBox(height: 8),
        // Points Rows (Ordered based on Points descending)
        Container(
            width: 600,
            child: Column(
              children: [
                _buildPointsRow(1, 'Barcelona', '2', '1', '6', '23', '38',
                    'asset/images/Barcelona2.png', Color(0xFF002B5B)),
                _buildPointsRow(2, 'Real Madrid', '4', '3', '7', '15', '37',
                    'asset/images/Rmandrid.png', Color(0xFF002B5B)),
                _buildPointsRow(3, 'Atlético Madrid', '4', '4', '9', '20', '34',
                    'asset/images/Atletico.png', Color(0xFF002B5B)),
                _buildPointsRow(4, 'Villareal', '8', '2', '10', '16', '32',
                    'asset/images/villareal.png', Color(0xFF540B0E).withOpacity(0.5)),
                _buildPointsRow(5, 'Real Sociedad', '6', '5', '13', '13', '30',
                    'asset/images/realsociedad.png', Color(0xFF540B0E).withOpacity(0.5)),
                _buildPointsRow(6, 'Sevilla', '3', '4', '15', '12', '30',
                    'asset/images/Sevilla.jpg', Color(0xFF0D1226)),
                _buildPointsRow(7, 'Granda', '3', '7', '20', '11', '24',
                    'asset/images/granda.png', Color(0xFF0D1226)),
              ],
            )),
      ],
    );
  }

  Widget _buildPointsRow(int position, String team, String d, String l, String ga, String gd, String pts, String imagePath, Color bgColor) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$position', style: TextStyle(color: Colors.white)),
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(imagePath),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 8),
              Text(team, style: TextStyle(color: Colors.white)),
            ],
          ),
          Text(d, style: TextStyle(color: Colors.white)),
          Text(l, style: TextStyle(color: Colors.white)),
          Text(ga, style: TextStyle(color: Colors.white)),
          Text(gd, style: TextStyle(color: Colors.white)),
          Text(pts, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
