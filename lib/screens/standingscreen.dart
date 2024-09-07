import 'package:flutter/material.dart';

class StandingScreen extends StatefulWidget {
  const StandingScreen({super.key});

  @override
  State<StandingScreen> createState() => _StandingScreenState();
}

class _StandingScreenState extends State<StandingScreen> {
  String _selectedCategory = 'Soccer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        title: _buildSearchBar(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            _buildCategoryMenu(),
            SizedBox(height: 30),
            _buildLeagueHeader('La Liga', 'Spain', 'asset/images/image 10.png'),
            _buildDataTable(), // Replace Standingrow() with DataTable
            _buildLeagueHeader('Premier League', 'England', 'asset/images/image 9.png'),
            _buildDataTable(), // Replace Standingrow() with DataTable
          ],
        ),
      ),
    );
  }

  Widget _buildLeagueHeader(String leagueName, String country, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 40,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                leagueName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              Text(
                country,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDataTable() {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor:Colors.black ),
      child: DataTable(
        dividerThickness: 1,
       
        
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
          ),
           DataColumn(
            label: Text(
              'Team',
              style: TextStyle(color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'D',
              style: TextStyle(color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'L',
              style: TextStyle(color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'G',
              style: TextStyle(color: Colors.white),
            ),
          ),
          DataColumn(
            label: Text(
              'Pts',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        rows:  <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Image.asset('asset/images/Atletico.png',height: 30,)),
      
              DataCell(Text('Atletico Mandrid', style: TextStyle(color: Colors.white))),
              DataCell(Text('20', style: TextStyle(color: Colors.white))),
              DataCell(Text('5', style: TextStyle(color: Colors.white))),
              DataCell(Text('3', style: TextStyle(color: Colors.white))),
              DataCell(Text('63', style: TextStyle(color: Colors.white))),
            ],
          ),
          DataRow(
      
            cells: <DataCell>[
              DataCell(Image.asset('asset/images/realmadrid (1).png',height: 30)),
      
              DataCell(Text('Real Madrid', style: TextStyle(color: Colors.white))),
              DataCell(Text('18', style: TextStyle(color: Colors.white))),
              DataCell(Text('7', style: TextStyle(color: Colors.white))),
              DataCell(Text('2', style: TextStyle(color: Colors.white))),
              DataCell(Text('56', style: TextStyle(color: Colors.white))),
            ],
          ),
           DataRow(
            cells: <DataCell>[
              DataCell(Image.asset('asset/images/barcelona.png',height: 30)),
      
              DataCell(Text('Barcelona', style: TextStyle(color: Colors.white))),
              DataCell(Text('18', style: TextStyle(color: Colors.white))),
              DataCell(Text('7', style: TextStyle(color: Colors.white))),
              DataCell(Text('2', style: TextStyle(color: Colors.white))),
              DataCell(Text('56', style: TextStyle(color: Colors.white))),
            ],
          ),
           DataRow(
            cells: <DataCell>[
              DataCell(Image.asset('asset/images/Villareal (1).png',height: 30)),
      
              DataCell(Text('Villareal', style: TextStyle(color: Colors.white))),
              DataCell(Text('18', style: TextStyle(color: Colors.white))),
              DataCell(Text('7', style: TextStyle(color: Colors.white))),
              DataCell(Text('2', style: TextStyle(color: Colors.white))),
              DataCell(Text('56', style: TextStyle(color: Colors.white))),
            ],
          ),
      
          // Add more rows as needed
        ],
        headingRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xFF1F1F1F)),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xFF2C2C2C)),
      ),
    );
  }

  Widget _buildCategoryMenu() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildCategoryItem('Soccer', 'asset/images/image 1.png'),
          _buildCategoryItem('Basketball', 'asset/images/image 2.png'),
          _buildCategoryItem('Football', 'asset/images/image 3.png'),
          _buildCategoryItem('Baseball', 'asset/images/image 4.png'),
          _buildCategoryItem('Tennis', 'asset/images/image 7.png'),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for news, team, match, etc...',
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
        prefixIcon: const Icon(Icons.search, color: Colors.white),
        filled: true,
        fillColor: const Color(0xFF1F1F1F),
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildCategoryItem(String title, String iconPath) {
    bool isSelected = _selectedCategory == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = title;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.orange : const Color(0xFF1F1F1F),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
          child: Row(
            children: [
              Image.asset(
                iconPath,
                height: 20,
              ),
              if (isSelected) ...[
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
