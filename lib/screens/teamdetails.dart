import 'package:flutter/material.dart';

void main() {
  runApp(Detailteam());
}

class Detailteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MatchDetailScreen(),
    );
  }
}

class MatchDetailScreen extends StatefulWidget {
  @override
  _MatchDetailScreenState createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  int selectedTab = 1; // Default selected tab index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1226), // Background color
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1226),
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        centerTitle: true,
        title: Text('UEFA Champions League', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Padding around content
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Match Info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 30, child: Image.asset('asset/images/Arsenelog-removebg-preview.png',height: 45,)),
                          SizedBox(height: 10),
                          Text(
                            'Arsenal',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '2 - 0',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '90.15',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(radius: 30,backgroundColor: Colors.black.withOpacity(0.5), child: Image.asset('asset/images/a.villa-removebg-preview.png',height: 45,)),
                          SizedBox(height: 40),
                          Text(
                            'Aston Villa',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  // Tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TabButton(
                        title: 'Match Detail',
                        isSelected: selectedTab == 0,
                        onTap: () => setState(() {
                          selectedTab = 0;
                        }),
                      ),
                      TabButton(
                        title: 'Line Up',
                        isSelected: selectedTab == 1,
                        onTap: () => setState(() {
                          selectedTab = 1;
                        }),
                      ),
                      TabButton(
                        title: 'H2H',
                        isSelected: selectedTab == 2,
                        onTap: () => setState(() {
                          selectedTab = 2;
                        }),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  // Formation
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Formation',
                        
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      
                      ),SizedBox(width: 20,),
                       Text('(4-2-3-1)',  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.5),
                     
                    ),),

                    ],
                  ),
                 
                  SizedBox(height: 40),
                  // Team Selection Tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TeamSelectionButton(title: 'Arsenal', isSelected: true),
                      TeamSelectionButton(title: 'Aston Villa', isSelected: false),
                    ],
                  ),
                  SizedBox(height: 30),
                  // Asset Image for Formation
                  Image.asset(
                    'asset/images/fieldFootball.png', // Ensure this path is correct
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const TabButton({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFF6E4E) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white.withOpacity(0.7),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class TeamSelectionButton extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TeamSelectionButton({required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFF6E4E) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white.withOpacity(0.7),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
