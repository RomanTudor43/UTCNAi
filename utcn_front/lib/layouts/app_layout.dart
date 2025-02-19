import 'package:flutter/material.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/top_bar.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  const AppLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [const TopBar(), NavBar(), Expanded(child: child)],
      ),
    );
  }
}