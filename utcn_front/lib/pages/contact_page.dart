import 'package:flutter/material.dart';
import '../../layouts/app_layout.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'About the ILLC content goes here...',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
