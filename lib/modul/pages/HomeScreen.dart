import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'), // Replace 'assets/image.png' with your image path
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0), // Add padding at the top
              child: Stack(
                children: [
                  Positioned(
                    left: 20, // Position text 20 pixels from the left edge
                    top: 9,   // Position text 10 pixels from the top edge
                    child: Text(
                      'Котовск',
                      style: GoogleFonts.philosopher(
                        textStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // First card widget
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 450,
                                height: 250,
                                child: buildCardWidget('assets/images/1.png', 'Начало пути'),
                              ),
                            ),
                            SizedBox(width: 20), // Adjust the spacing between the first and second card
                            // Second card widget
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 450,
                                height: 250,
                                child: buildCardWidget('assets/images/2.png', 'Город в годы Великой Отечественной войны'),
                              ),
                            ),
                            SizedBox(width: 20), // Adjust the spacing between the second and third card
                            // Third card widget
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 450,
                                height: 250,
                                child: buildCardWidget('assets/images/3.png', 'Котовск сегодня'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20), // Adjust the spacing between the third card and the new row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Fourth card widget
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 450,
                                height: 250,
                                child: buildCardWidget('assets/images/4.png', 'Символы города'),
                              ),
                            ),
                            SizedBox(width: 20), // Adjust the spacing between the fourth and fifth card
                            // Fifth card widget
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 450,
                                height: 250,
                                child: buildCardWidget('assets/images/5.png', 'Памятные места'),
                              ),
                            ),
                            SizedBox(width: 20), // Adjust the spacing between the fifth and sixth card
                            // Sixth card widget
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 450,
                                height: 250,
                                child: buildCardWidget('assets/images/6.png', 'Викторина по истории города'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCardWidget(String imagePath, String title) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1), // Set the opacity level here
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 15,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
