import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/research_page.dart';
import 'pages/people_page.dart';
import 'pages/contact_page.dart';
import 'pages/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive NavBar Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(),
      routes: {
        '/about': (context) => const AboutPage(),
        '/research': (context) => const ResearchPage(),
        '/people': (context) => const PeoplePage(),
        '/contact': (context) => const ContactPage(),
        '/news': (context) => const NewsPage(),
        '/newsDetail': (context) => const NewsDetailPage(),
        '/eventDetail': (context) => const NewsDetailPage(),
      },
    );
  }
}