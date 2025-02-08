import 'package:flutter/material.dart';
import 'onboarding_screen2.dart';  

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(123, 224, 224, 224), // Light grey background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white, // White container
              borderRadius: BorderRadius.circular(15), // Rounded edges
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 0.122),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Wrap content
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // PNG Image with Rounded Borders
                ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                  child: Image.asset(
                    'assets/images/recycle.jpg', // Make sure the path is correct
                    height: 150, // Adjust size
                    width: 150, // Make it square
                    fit: BoxFit.cover, // Ensure it covers the space
                  ),
                ),
                SizedBox(height: 15), // Space between image and text

                // Title
                Text(
                  "Welcome to Nadhafni!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(176, 1, 111, 189),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),

                // Description
                Text(
                  "An innovative mobile application that uses AI to detect whether a trash can is clean or dirty. By analyzing images in real-time, it helps improve waste management and cleanliness efficiently.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),

                // Button
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => OnboardingScreen2()),
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: const Color.fromARGB(175, 1, 126, 189),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
