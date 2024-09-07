import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  bool _isExpanded = false; // State to track whether the text is expanded or not

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('asset/images/Mask Group.png'),
              const Text(
                'Arsenal vs Aston Villa \nprediction',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('asset/images/photo profile.png', height: 50),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      const Text(
                        'Brain Imanuel',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'May 15, 2020',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border, color: Colors.white),
                  ),
                  const Text('1430', style: TextStyle(color: Colors.white)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.comment_outlined, color: Colors.white),
                  ),
                  const Text('976', style: TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(height: 20),
              // Display text with "Read More" button
              Text(
                _isExpanded
                    ? 'Arsenal will have to grind it out against Aston Villa if they are to register League wins. The match is scheduled for Sunday at the Emirates.\n\nThe Gunners put forth a real statement of intent after their 1-0 win against Manchester United.\nArsenal will have to grind it out against Aston Villa if they are to register League wins. The match is scheduled for Sunday at the Emirates.'
                    : 'Arsenal will have to grind it out against Aston Villa if they are to register League wins. The match is scheduled for Sunday at the Emirates.',
                style: TextStyle(color: Colors.white), // Less opacity for text
              ),
              const SizedBox(height: 10),

              
              Center( // Center the button
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded; // Toggle the expanded state
                    });
                  },
                  child: Text(
                    _isExpanded ? 'Show less' : 'Read more ',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            
            
            
            ],
          ),
        ),
      ),
    );
  }
}
