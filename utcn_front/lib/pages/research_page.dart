import 'package:flutter/material.dart';
import '../../layouts/app_layout.dart';

class ResearchPage extends StatelessWidget {
  const ResearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text('Research page content...', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
