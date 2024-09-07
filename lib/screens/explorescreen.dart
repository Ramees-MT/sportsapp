import 'package:flutter/material.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({super.key});

  @override
  _NewsHomePageState createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  // Variable to keep track of the selected category
  String _selectedCategory = 'Soccer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        title: _buildSearchBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryMenu(),
              const SizedBox(height: 20),
              _buildNewsList(),
              const SizedBox(height: 30),
              const Text(
                'Trending News',
                style: TextStyle(
                    color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildTrendingNewsList(),
            ],
          ),
        ),
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

  Widget _buildCategoryItem(String title, String iconPath) {
    bool isSelected = _selectedCategory == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = title; // Update selected category
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.orange : const Color(0xFF1F1F1F),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Row(
            children: [
              Image.asset(
                iconPath,
                height: 20,
               // Change icon color if selected
              ),
              if (isSelected) ...[
                const SizedBox(width: 8), // Space between icon and title
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

  Widget _buildNewsList() {
    return Column(
      children: List.generate(4, (index) => _buildNewsItem()).toList(),
    );
  }

  Widget _buildNewsItem() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset('asset/images/image 135.png',
                height: 60, width: 60, fit: BoxFit.cover),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'News Headline Goes Here...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                Text(
                  '04 JAN 2021, 14:16',
                  style:
                      TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 12),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingNewsList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('asset/images/Mask Group.png',
                  width: 150, height: 150, fit: BoxFit.cover),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
