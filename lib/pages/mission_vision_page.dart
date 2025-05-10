import 'package:flutter/material.dart';
import '../widgets/page_wrapper.dart';

// Mission & Vision Page
class MissionVisionPage extends StatelessWidget {
  final Color primaryGreen = Color(0xFF2E7D32);
  final Color lightGreen = Color(0xFF388E3C);
  final Color darkGreen = Color(0xFF1B5E20);

  MissionVisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      currentIndex: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mission & Vision'),
          elevation: 0,
          backgroundColor: primaryGreen,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ValueContainer(
                title: 'Our Mission',
                description:
                    "An institution of higher learning committed to equipping individuals with knowledge, skills, and values that will enable them to achieve professional goals and provide leadership and service for national development.",
                color: primaryGreen,
              ),
              SizedBox(height: 20),
              ValueContainer(
                title: 'Our Vision',
                description:
                    "An institution of higher learning, developing globally-competitive and value-laden professionals and leaders instrumental to community development and nation building.",
                color: lightGreen,
              ),
              SizedBox(height: 20),
              ValueContainer(
                title: 'Core Values',
                description:
                    "As a God-fearing institution respecting multi-faith of people,\nPnC adheres to the following core values:\n• Personal Dignity\n• Nurturing Community\n• Commitment to Excellence",
                color: darkGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ValueContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color color;

  const ValueContainer({
    super.key,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 16, height: 1.5),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
