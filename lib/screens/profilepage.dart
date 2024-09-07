import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 50,
                  child: Image(image: AssetImage('asset/images/photo profile.png')),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: IconButton(
                      onPressed: () {
                        // Add your action here
                      },
                      icon: const Icon(Icons.edit, color: Colors.white),
                      constraints: const BoxConstraints(),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Brain Imanuel',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              '#YNWK till the end',
              style: TextStyle(color: Colors.white.withOpacity(0.5)),
            ),
            const SizedBox(height: 20),

            // TabBar with Rectangle-Shaped Indicator
            const TabBar(
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: Colors.orange, // Indicator color
                borderRadius: BorderRadius.all(Radius.circular(30)), // Rounded corners
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'My profile'),
                Tab(text: 'Activity'),
                Tab(text: 'Settings'),
              ],
            ),
            const SizedBox(height: 20),
            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1: My Profile
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(Icons.account_circle_outlined, color: Colors.white),
                            SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name', style: TextStyle(color: Colors.white)),
                                Text('Brain Imanuel', style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ),
                      Divider(indent: 30, endIndent: 30, color: Colors.white.withOpacity(0.2)),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(Icons.email, color: Colors.white),
                            SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email', style: TextStyle(color: Colors.white)),
                                Text('brains213@gmail.com', style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ),
                      Divider(indent: 30, endIndent: 30, color: Colors.white.withOpacity(0.2)),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(Icons.phone, color: Colors.white),
                            SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Phone', style: TextStyle(color: Colors.white)),
                                Text('+6234566780', style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ),
                      Divider(indent: 30, endIndent: 30, color: Colors.white.withOpacity(0.2)),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(Icons.location_pin, color: Colors.white),
                            SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Address', style: TextStyle(color: Colors.white)),
                                Text('Long beach, California', style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ),
                      // Add more rows as needed
                    ],
                  ),
                  // Tab 2: Activity
                  const Center(
                    child: Text(
                      'Activity Content',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // Tab 3: Settings
                  const Center(
                    child: Text(
                      'Settings Content',
                      style: TextStyle(color: Colors.white),
                    ),
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
