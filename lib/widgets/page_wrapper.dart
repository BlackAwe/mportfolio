import 'package:flutter/material.dart';

class PageWrapper extends StatelessWidget {
  final Widget child;
  final int currentIndex;

  const PageWrapper({
    super.key,
    required this.child,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: 'PNC'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/gallery');
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/pnc');
              break;
            case 4:
              Navigator.pushReplacementNamed(context, '/contact');
              break;
          }
        },
      ),
    );
  }
}
