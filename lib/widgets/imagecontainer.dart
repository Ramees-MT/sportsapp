import 'package:flutter/material.dart';

class Imagecontainer extends StatelessWidget {
  final String imagepath;
  final String sports;
  final bool isSelected;
  final VoidCallback onTap;

  const Imagecontainer({
    super.key,
    required this.imagepath,
    required this.sports,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Handle the tap
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? Colors.orange : Color(0xff222232), // Change color based on selection
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagepath,
              height: 80,
              width: 80,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8),
            Text(
              sports,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
