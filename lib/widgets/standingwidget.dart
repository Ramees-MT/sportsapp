import 'package:flutter/material.dart';

class Standingrow extends StatelessWidget {
  Standingrow({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // Header row
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff222232)
              
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      'Team',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Text(
                      'D',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Text(
                      'L',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Text(
                      'Ga',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Text(
                      'Gd',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Text(
                      'Pts',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                    ),
                  ),
                  
                ],
              ),
              

            ),
            
          ),
        ],
      ),
    );
  }
}
