import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this); // Initialize TabController with 2 tabs
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
            ''), // Match text color from MatchScreen
        bottom: TabBar(
          dividerHeight: 0,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController, // Assign the controller
          indicator: BoxDecoration(
            color: Colors.orange, // Indicator color
            borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          
          tabs: const [
            Tab(text: 'Arsenal'), // Tab text
            Tab(text: 'Aston Villa'), // Tab text
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // First Tab - Arsenal
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  Image(
                    image: AssetImage('asset/images/arsenallineup.png'),
                  ),
                ],
              ),
            ),
          ),
          // Second Tab - Aston Villa
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  Image(
                    image: AssetImage('asset/images/villa-tactics.jpeg'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black, // Match background color from MatchScreen
    );
  }
}
