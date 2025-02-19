import 'package:flutter/material.dart';
import '../../../layouts/app_layout.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400, // Smaller height so you see more of the image
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/about_image.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(child: Container(color: Colors.black54)),
                  // Title near the bottom
                  Positioned(
                    bottom: 20, // 20px from the bottom edge
                    left: 0,
                    right: 0,
                    child: Text(
                      'About the Institute',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 2) MAIN CONTENT (Two-Column Layout)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // LEFT COLUMN: Side Nav or Links
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _sideNavLink('History', () {}),
                        _sideNavLink('Mission', () {}),
                        _sideNavLink('Diversity Committee', () {}),
                        _sideNavLink('Social Code of Conduct', () {}),
                        _sideNavLink('Self-evaluation', () {}),
                        _sideNavLink('Research Assessment Reports', () {}),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  // RIGHT COLUMN: Main Text / Body
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Load text content from assets/about_text.txt
                        FutureBuilder<String>(
                          future: DefaultAssetBundle.of(context)
                              .loadString('assets/texts/about_text.txt'),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Text(
                                'Error loading content: ${snapshot.error}',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                              );
                            } else {
                              return Text(
                                snapshot.data ?? '',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                              );
                            }
                          },
                        ),
                        const SizedBox(height: 16),
                      ],
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

  Widget _sideNavLink(String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.red[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue[900],
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
