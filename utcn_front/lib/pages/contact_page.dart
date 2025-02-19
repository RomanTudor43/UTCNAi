import 'package:flutter/material.dart';
import '../../layouts/app_layout.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  // Banner Image
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/home8.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(child: Container(color: Colors.black54)),
                  Center(
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _sideNavLink('Contact', () {}),
                        const SizedBox(height: 8),
                        _sideNavLink('Directions', () {}),
                      ],
                    ),
                  ),

                  // Spacing between columns
                  const SizedBox(width: 32),

                  // RIGHT COLUMN (Contact Details)
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _contactRow(title: 'E-mail', content: 'pcai@utcn.ro'),
                        const SizedBox(height: 16),

                        _contactRow(
                          title: 'Phone',
                          content:
                              'LAB01: +40 7xx xxx xxx\n'
                              'LAB02: +40 7xx xxx xxx',
                        ),
                        const SizedBox(height: 16),

                        _contactRow(
                          title: 'Address',
                          content:
                              'Platforma de Cercetare pentru Inteligenta Artificiala\n'
                              'Universitatea Tehnica din Cluj-Napoca\n'
                              'Strada Observatorului 34 Cluj-Napoca\n'
                              'Romania',
                        ),
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
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 11, 24, 34),
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget _contactRow({required String title, required String content}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title\n',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Expanded(child: Text(content, style: const TextStyle(fontSize: 16))),
      ],
    );
  }
}
