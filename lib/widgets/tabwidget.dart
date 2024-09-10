// import 'package:flutter/material.dart';

// class TabBarscreen extends StatefulWidget {
//   const TabBarscreen({super.key});

//   @override
//   _TabBarscreenState createState() => _TabBarscreenState();
// }

// class _TabBarscreenState extends State<TabBarscreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text('TabBar Example'),
//         bottom: TabBar(
//           controller: _tabController,
//           indicatorColor: Colors.orange, // Orange color for the selected tab
//           indicatorWeight: 3.0, // Thickness of the indicator line
//           labelColor: Colors.orange, // Color for selected tab label
//           unselectedLabelColor: Colors.white, // Color for unselected tab labels
//           tabs: const [
//             Tab(text: 'Arsenal'),
//             Tab(text: 'Astonvilla'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           Center(child: Image.asset(
//                     'asset/images/fieldFootball.png', // Ensure this path is correct
//                     width: double.infinity,
//                     height: 400,
//                     fit: BoxFit.cover,
//                   ),),
//           Center(child: Text('Content for Tab 2', style: TextStyle(color: Colors.white))),
//         ],
//       ),
//       backgroundColor: Colors.black,
//     );
//   }
// }
