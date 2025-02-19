import 'package:flutter/material.dart';
import '../../layouts/app_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/pcia.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(color: const Color.fromARGB(141, 1, 1, 1)),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 175.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Institute for Logic, Language and Computation',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Welcome to the Institute for Logic, Language and Computation, '
                            'a research institute in the interdisciplinary area between mathematics, '
                            'linguistics, music, computer science, philosophy, and artificial intelligence.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 100),

            // 2) SCROLLABLE ROW
            _buildScrollableNewsRow(context),

            const SizedBox(height: 100),

            // 3) GRID OF CARDS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: _buildGridOfCards(context),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  /// Builds a horizontal scrollable list of "news" items
  Widget _buildScrollableNewsRow(BuildContext context) {
    final items = [
      _NewsItemData(
        title: 'News',
        subtitle: '(New) PhD Position in Algorithms',
        routeName: '/news',
        imagePath: 'assets/images/home1.jpg',
      ),
      _NewsItemData(
        title: 'This Week',
        subtitle: '19 February 2025, AI Culture, Dr. Kim Baraka',
        routeName: '/events',
        imagePath: 'assets/images/home2.jpeg',
      ),
      _NewsItemData(
        title: 'Prof. Henkjan Honing',
        subtitle: 'Professor of Cognitive and Computational Musicology',
        routeName: '/people',
        imagePath: 'assets/images/home3.jpg',
      ),
      _NewsItemData(
        title: 'New Collaboration',
        subtitle: 'ILLC partners with leading AI lab',
        routeName: '/collaboration',
        imagePath: 'assets/images/home4.jpg',
      ),
      _NewsItemData(
        title: 'Workshop on Logic',
        subtitle: 'Exploring new frontiers in mathematical logic',
        routeName: '/workshop',
        imagePath: 'assets/images/home7.jpg',
      ),
    ];

    return SizedBox(
      height: 270,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 75),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 66),
        itemBuilder: (context, index) {
          final item = items[index];
          return _buildNewsCard(context, item);
        },
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context, _NewsItemData item) {
    return SizedBox(
      width: 300,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Title
          Text(
            item.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(item.subtitle, maxLines: 2, overflow: TextOverflow.ellipsis),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, item.routeName),
            child: Text(
              'Read more →',
              style: TextStyle(
                color: Colors.red[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridOfCards(BuildContext context) {
    final gridItems = [
      _GridItemData(
        title: 'Research',
        routeName: '/research',
        imagePath: 'assets/images/home1.jpg',
      ),
      _GridItemData(
        title: 'Education',
        routeName: '/education',
        imagePath: 'assets/images/home8.jpg',
      ),
      _GridItemData(
        title: 'Partnership',
        routeName: '/partnership',
        imagePath: 'assets/images/home6.jpg',
      ),
      _GridItemData(
        title: 'PCAI People in the Media',
        routeName: '/peopleInMedia',
        imagePath: 'assets/images/home5.jpg',
      ),
    ];

    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 30,
      mainAxisSpacing: 30,
      childAspectRatio: 3.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:
          gridItems.map((item) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, item.routeName),
              child: Stack(
                children: [
                  // Background Image
                  Positioned.fill(
                    child: Image.asset(item.imagePath, fit: BoxFit.cover),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    height: 70,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Color.fromARGB(101, 1, 1, 1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 1),
                                blurRadius: 3,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Read more →',
                          style: TextStyle(
                            color: Colors.red[300],
                            fontWeight: FontWeight.bold,
                            shadows: const [
                              Shadow(
                                offset: Offset(0, 1),
                                blurRadius: 3,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}

class _NewsItemData {
  final String title;
  final String subtitle;
  final String routeName;
  final String imagePath;

  _NewsItemData({
    required this.title,
    required this.subtitle,
    required this.routeName,
    required this.imagePath,
  });
}

class _GridItemData {
  final String title;
  final String routeName;
  final String imagePath;

  _GridItemData({
    required this.title,
    required this.routeName,
    required this.imagePath,
  });
}
