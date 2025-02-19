import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(148, 233, 227, 227),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo image
          Image.asset(
            'assets/images/utcn-logo.png',  
            height: 50, // Adjust the height as needed
          ),
          const SizedBox(width: 10), // Spacing between the logo and text
          // Title text wrapped in MouseRegion and GestureDetector for navigation
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                // Navigate to the home page; adjust the route name as needed.
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                'Institutul de Cercetare pentru Inteligenta Artificiala',
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PlayfairDisplay",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
