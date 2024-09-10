import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'UEFA Champions League',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset('asset/images/idezia.png', height: 50),
                            const Text('Arsenal', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        const Column(
                          children: [
                            Text(
                              '2 - 3',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text('90.15', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('asset/images/idezia (1).png', height: 50),
                            const Text('Aston Villa',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // TabBar with Rectangle-Shaped Indicator
                    TabBar(
                      dividerHeight: 0,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: Colors.orange, // Indicator color
                        borderRadius: BorderRadius.circular(30), // Rounded corners
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        const Tab(text: 'Match Details'),
                        const Tab(text: 'Lineups'),
                        const Tab(text: 'H2H'),
                      ],
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  // Match Details Tab
                  ListView.builder(
                    itemCount: matchData.length,
                    itemBuilder: (context, index) {
                      final match = matchData[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Card(
                          color: Color(0xff2B2B3D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                            height: 100, // Height of card
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4, // Adjust flex to make the big container wider
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 20, // Radius for circular logo
                                            backgroundColor: Color(0xff222232),
                                            backgroundImage: AssetImage(match['homeLogo'])),
                                        SizedBox(width: 4), // Reduced space between avatars
                                        CircleAvatar(
                                            radius: 20, // Radius for circular logo
                                            backgroundColor: Color(0xff222232),
                                            backgroundImage: AssetImage(match['awayLogo'])),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${match['homeTeam']} vs ${match['awayTeam']}',
                                              style: TextStyle(color: Colors.white),
                                            ),
                                            Center(
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '${match['homeScore']}      ', // Increased spaces after home score
                                                      style: TextStyle(color: Colors.white54),
                                                    ),
                                                    TextSpan(
                                                      text: '-      ', // Increased spaces around the dash
                                                      style: TextStyle(color: Colors.white54),
                                                    ),
                                                    TextSpan(
                                                      text: '    ${match['awayScore']}', // Increased spaces before away score
                                                      style: TextStyle(color: Colors.white54),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.center, // Center-align the text
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
                                    width: 60, // Width to match height of card
                                    padding: EdgeInsets.symmetric(vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Color(0xff222232), // Always using the same color
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    alignment: Alignment.center, // Center the text inside the container
                                    child: Text(
                                      match['status'],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  // Lineups Tab
                  Center(
                    child: Text(
                      'Lineups content goes here',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // H2H Tab
                  Center(
                    child: Text(
                      'Head-to-Head content goes here',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.stacked_line_chart), label: 'Stats'),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
