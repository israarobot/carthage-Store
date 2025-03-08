import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.orange.withValues(alpha: 0.2), // Fixed opacity
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centered horizontally
                  children: [
                    Text(
                      "F",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "A",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "S",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centered horizontally
                  children: [
                    Text(
                      "H",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "I",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "O",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "N",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 150),
                GestureDetector(
                  onTap: () {
                    // Handle navigation
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Let's Get Started",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_outward,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
