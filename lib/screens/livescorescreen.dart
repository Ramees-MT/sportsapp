import 'package:flutter/material.dart';
import 'package:sportsapp/screens/matchdetailscreen.dart';
import 'package:sportsapp/widgets/imagecontainer.dart';

class Livescore extends StatefulWidget {
  const Livescore({super.key});

  @override
  State<Livescore> createState() => _LivescoreState();
}

class _LivescoreState extends State<Livescore> {
  // List of sports and their corresponding images
  final List<Map<String, String>> sportsList = [
    {'image': 'asset/images/image 3.png', 'name': 'Soccer'},
    {'image': 'asset/images/image 4.png', 'name': 'Basketball'},
    {'image': 'asset/images/image 2.png', 'name': 'Football'},
    {'image': 'asset/images/baseball_26be 1.png', 'name': 'Baseball'},
    {'image': 'asset/images/image 1.png', 'name': 'Tennis'},
    {'image': 'asset/images/image 7.png', 'name': 'Volleyball'},
  ];

  final List<Map<String, dynamic>> matchData = [
    {
      'league': 'La Liga',
      'country': 'Spain',
      'flag': '🇪🇸',
      'homeTeam': 'Barcelona',
      'awayTeam': 'Real Madrid',
      'homeScore': 2,
      'awayScore': 0,
      'status': 'HT', // Half-time
      'homeLogo': 'asset/images/fcb.jpg',
      'awayLogo': 'asset/images/realmadrid (1).png',
    },
    {
      'league': 'Premier League',
      'country': 'England',
      'flag': '🏴',
      'homeTeam': 'Aston Villa',
      'awayTeam': 'Liverpool',
      'homeScore': 2,
      'awayScore': 3,
      'status': 'FT', // Full-time
      'homeLogo': 'asset/images/liverpool.jpg',
      'awayLogo': 'asset/images/fcb.jpg',
    },
  ];

  int selectedindex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0D1226),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row for Live Score text and icon buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Live Score',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.notifications, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 170,
                  width: double.infinity, // Full width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), 
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF0C0C69),
                        Color(0xFF246BFD)
                      ], // Gradient colors
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20), 
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        // Background image
                        Image.asset(
                          'asset/images/image-removebg-preview 4.png', 
                          fit: BoxFit.cover,
                        ),
                       
                        Positioned(
                          bottom: 20,
                          left: 30,
                          right: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'asset/images/image 3.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                        const Text(
                                          ' Football',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Liverpool UEFA\nChampion League',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Celebration',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Yesterday, 06.30 PM',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // First ListView.builder for sports list
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sportsList.length,
                  itemBuilder: (context, index) {
                    final sport = sportsList[index];
                    return Imagecontainer(
                      imagepath: sport['image']!,
                      sports: sport['name']!,
                      isSelected: selectedindex == index,
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              const SizedBox(height: 20),

              // Second ListView.builder for match data with spacing
              Expanded(
                child: ListView.builder(
                  itemCount: matchData.length,
                  itemBuilder: (context, index) {
                    final match = matchData[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16.0), // Space between cards
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .start, 
                            children: [
                              Image.asset(
                                'asset/images/image 9.png',
                                height: 40,
                              ),
                                SizedBox(
                                  width: 10),
                             Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Align text to the start
                                mainAxisAlignment: MainAxisAlignment
                                    .center,
                                children: [
                                  Text(
                                    'Premier League',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'England',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          GestureDetector(
                            onTap:(){ Navigator.push(context, MaterialPageRoute(
                              builder: (context) => MatchScreen(),));},
                            child: Card(
                              color: const Color(0xff2B2B3D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                height: 100, 
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex:
                                          4, 
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                                radius:
                                                    20, 
                                                backgroundColor:
                                                    Color(0xff222232),
                                                backgroundImage: null),
                                            const SizedBox(
                                                width:
                                                    4), 
                                            const CircleAvatar(
                                                radius:
                                                    20, 
                                                backgroundColor:
                                                    Color(0xff222232),
                                                backgroundImage: null),
                                            const SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '${match['homeTeam']} vs ${match['awayTeam']}',
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Center(
                                                  child: Text.rich(
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '${match['homeScore']}', 
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.white54),
                                                        ),
                                                        const TextSpan(
                                                          text:
                                                              '-      ', // Increased spaces around the dash
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white54),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '    ${match['awayScore']}',
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.white54),
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign
                                                        .center, 
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 100,
                                        width:
                                            60, // Width to match height of card
                                        padding:
                                            const EdgeInsets.symmetric(vertical: 4),
                                        decoration: BoxDecoration(
                                          color: const Color(
                                              0xff222232), // Always using the same color
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        alignment: Alignment
                                            .center, // Center the text inside the container
                                        child: Text(
                                          match['status'],
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
