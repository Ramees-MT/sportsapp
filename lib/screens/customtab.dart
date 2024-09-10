import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Initialize TabController with 2 tabs
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose the controller when no longer needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Match background color from MatchScreen
        title: const Text(
          
          '' // Match text color from MatchScreen
        ),
        bottom: TabBar(
        dividerColor:Colors.transparent,
         indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController, // Assign the controller
          indicator: BoxDecoration(
            color: Colors.orange, // Indicator color
            borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          tabs: [
            const Tab(text: 'Arsenal'), // Tab text
            const Tab(text: 'Aston Villa'), // Tab text
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
         // Match the styling of the TabBarView content from MatchScreen
          Center(child: SingleChildScrollView(
            child: Column(
              children: [
                 
                    SizedBox(height: 20,),
                Image.asset('asset/images/fieldFootball.png'),
            
              ],
            ),
          )),
          Center(child: Text('Favorites Page', style: TextStyle(color: Colors.white))),
        ],
      ),
      backgroundColor: Colors.black, // Match background color from MatchScreen
    );
  }
}
