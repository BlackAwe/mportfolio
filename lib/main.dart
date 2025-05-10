import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/gallery_page.dart';
import 'pages/mission_vision_page.dart';
import 'pages/contact_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primaryColor: Color(0xFF1A237E),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF1A237E),
          secondary: Color(0xFF0D47A1),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1A237E),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/gallery': (context) => GalleryPage(),
        '/pnc': (context) => MissionVisionPage(),
        '/contact': (context) => ContactPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
