import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Matches',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF10132A),
        primaryColor: Colors.white,
      ),
      home: MatchesScreen(),
    );
  }
}

class MatchesScreen extends StatelessWidget {
  final List<Match> matches = [
    Match('Barcelona', 'Real Madrid', 'Monday, 12 Feb 2021', '02:30 am', 'barcelona.png', 'realmadrid.png'),
    Match('Arsenal', 'Aston Villa', 'Tuesday, 9 Mar 2021', '05:00 am', 'arsenal.png', 'astonvilla.png'),
    Match('Chelsea', 'Liverpool', 'Saturday, 14 Mar 2021', '01:00 am', 'chelsea.png', 'liverpool.png'),
    Match('Dortmund', 'München', 'Wednesday, 8 Apr 2021', '02:30 am', 'dortmund.png', 'munchen.png'),
    Match('Real Madrid', 'Arsenal', 'Friday, 21 Apr 2021', '00:45 am', 'realmadrid.png', 'arsenal.png'),
    Match('Tottenham', 'Watford', 'Friday, 21 Apr 2021', '02:45 am', 'tottenham.png', 'watford.png'),
    Match('Swansea City', 'Fulham', 'Sunday, 2 May 2021', '04:45 am', 'swansea.png', 'fulham.png'),
    Match('Wolfsburg', 'Liverpool', 'Wednesday, 15 May 2021', '01:00 am', 'wolfsburg.png', 'liverpool.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Search your team ...',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.white),
              filled: true,
              fillColor: Color(0xFF1D1F33),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconButton(Icons.whatshot, 'Live Score'),
                _buildIconButton(Icons.article, 'News'),
                _buildIconButton(Icons.tag, 'Tags'),
                _buildIconButton(Icons.stadium, 'Stadium'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: matches.length,
              itemBuilder: (context, index) {
                return MatchCard(match: matches[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: () {},
        ),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class MatchCard extends StatelessWidget {
  final Match match;

  MatchCard({required this.match});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        color: Color(0xFF1D1F33),
        child: ListTile(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/${match.homeTeamIcon}'),
              ),
              SizedBox(width: 5),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/${match.awayTeamIcon}'),
              ),
            ],
          ),
          title: Text(
            '${match.homeTeam} VS ${match.awayTeam}',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            '${match.date} . ${match.time}',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: IconButton(
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class Match {
  final String homeTeam;
  final String awayTeam;
  final String date;
  final String time;
  final String homeTeamIcon;
  final String awayTeamIcon;

  Match(this.homeTeam, this.awayTeam, this.date, this.time, this.homeTeamIcon, this.awayTeamIcon);
}
