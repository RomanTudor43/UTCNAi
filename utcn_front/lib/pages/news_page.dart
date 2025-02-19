import 'package:flutter/material.dart';
import '../../layouts/app_layout.dart';

class NewsItem {
  final String title;
  final String date;
  final String excerpt;

  NewsItem({required this.title, required this.date, required this.excerpt});
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
       final illcNewsItems = [
      NewsItem(
        title: 'New PhD Position in Algorithmic Game Theory',
        date: 'Monday, March 20',
        excerpt:
            'A PhD position is available in the Theoretical Computer Science Group at the ILLC.  \n'
            'The successful candidate will work on cutting-edge research in algorithmic game theory, '
            'with a focus on mechanism design and online learning. \n'
            'The position offers a stimulating research environment and opportunities for collaboration '
            'with leading researchers in the field.  \n'
            'Applicants should have a strong background in computer science, mathematics, or a related field.  \n'
            'More details about the position and application process can be found on our website.',
      ),
      NewsItem(
        title: 'Research Collaboration Announcement',
        date: 'Friday, March 17',
        excerpt:
            'ILLC is proud to announce a new research collaboration with the University of Amsterdam '
            'on the topic of "Logic and Artificial Intelligence for Social Good." \n'
            'This collaboration will bring together researchers from both institutions to work on projects '
            'that address important societal challenges, such as fairness, transparency, and accountability in AI systems. \n'
            'We are excited about the potential of this collaboration to make a positive impact on society.',
      ),
    ];

    final illcEventsItems = [
      NewsItem(
        title: 'ICAI Seminar on Society',
        date: 'Wednesday, March 22',
        excerpt:
            'Join us for an interactive seminar discussing the societal impacts of artificial intelligence.\n'
            'The seminar will feature presentations from leading experts in the field, followed by a panel discussion. \n\n'
            'Topics to be covered include the ethical implications of AI, the future of work in an AI-driven economy, '
            'and the role of AI in shaping our social interactions. \n'
            'This event is free and open to the public.',
      ),
      NewsItem(
        title: 'Conference on Logic & AI',
        date: 'April 1 - April 3',
        excerpt:
            'Three-day conference focusing on the intersection of logic and artificial intelligence. \n'
            'The conference will feature keynote talks from renowned researchers, as well as contributed talks '
            'on a wide range of topics, including automated reasoning, knowledge representation, and machine learning. \n'
            'There will also be workshops and tutorials on various aspects of logic and AI. \n'
            'We invite researchers, students, and practitioners to attend this exciting event.',
      ),
      NewsItem(
        title: 'The creative cultures of AI',
        date: 'Wednesday 19 February 2025, 15:30-17:00',
        excerpt:
            'Join Dr Kim Baraka and Dr Rosa Wevers for a talk on the creative cultures of AI. \n'
            'This talk will explore the ways in which AI is being used to generate creative content, such as music, art, and literature. \n'
            'The speakers will also discuss the implications of this for our understanding of creativity and authorship. \n'
            'Location: Room L3.36, ILLC Lab42, Science Park 900, Amsterdam. \n'
            'For more information, see here or at https://aiculturesociety.github.io/ or contact Gabriel Pereira at g.pereira at uva.nl.',
      ),
    ];

    return AppLayout(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- Banner Image / Hero Section
              SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/news_photo.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        color: Colors.black54,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Text(
                        'ICAI News & Events',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Roboto', // or your custom font
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // -- Main content area with Side Nav & Right Column
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Side Nav
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(69, 1, 1, 1),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'News and Events',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red[900],
                              ),
                            ),
                            const SizedBox(height: 16),
                            _sideNavLink('ICAI News & Events', () {}),
                            _sideNavLink('News', () {}),
                            _sideNavLink('Events', () {}),
                            _sideNavLink('Funding Grants & Opportunities', () {}),
                            _sideNavLink('Agenda', () {}),
                            _sideNavLink('News Archives', () {}),
                            const SizedBox(height: 24),
                            Text(
                              'Years',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 8),
                            _sideNavLink('2025', () {}),
                            _sideNavLink('2024', () {}),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 32),

                    // Right Content
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // "Sections" header
                          Text(
                            'Sections',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // LINKS IN A COLUMN WITH ARROW ICON
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _topLink('ILLC Events this week', () {}),
                                const SizedBox(height: 8),
                                _topLink('ILLC News', () {}),
                                const SizedBox(height: 8),
                                _topLink('Master of Logic Defenses', () {}),
                              ],
                            ),
                          ),

                          const SizedBox(height: 8),
                          const Divider(),

                          // Headlines ICAI News
                          Text(
                            'Headlines ICAI News',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // News Cards
                          ...illcNewsItems.map(
                            (item) => _newsCard(context, item, 'newsDetail'),
                          ),

                          const SizedBox(height: 16),

                          // Headlines ICAI Events
                          Text(
                            'Headlines ICAI Events this week',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Events Cards
                          ...illcEventsItems.map(
                            (item) => _newsCard(context, item, 'eventDetail'),
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
      ),
    );
  }

  /// Side nav link helper with a '>' icon in front.
  Widget _sideNavLink(String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.red[50],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.arrow_right,
              size: 18,
              color: Colors.black,
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Top link helper with a '>' icon in front, black text, custom font.
  Widget _topLink(String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.arrow_right,
            color: Colors.black,
            size: 18,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  Widget _newsCard(BuildContext context, NewsItem item, String routeName) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/$routeName', arguments: item);
      },
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 255),
        margin: const EdgeInsets.only(left: 24, right: 150, top: 12, bottom: 12),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon or Image on the left
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.article, 
                  size: 40,
                  color: Colors.redAccent,
                ),
              ),
              // Text content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.date,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.excerpt,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Detail page, unchanged
class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final newsItem = ModalRoute.of(context)!.settings.arguments as NewsItem?;
    if (newsItem == null) {
      return const Scaffold(body: Center(child: Text('No news item found.')));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(newsItem.title),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              newsItem.title,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Date: ${newsItem.date}',
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Full details about "${newsItem.title}" go here...\n\n'
              'You can add more text, images, or links as needed...',
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
