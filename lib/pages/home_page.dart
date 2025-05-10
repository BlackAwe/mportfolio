import 'package:flutter/material.dart';
import '../widgets/page_wrapper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      currentIndex: 0,
      child: Scaffold(
        appBar: AppBar(title: Text('Welcome'), elevation: 0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Hero Section
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          'https://media.licdn.com/dms/image/v2/D5603AQGZQ7QaQivpzw/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1724675540333?e=1750896000&v=beta&t=SlrcjXXEcce8AN20IlNkQLBUP43tG9AiLRZCFSeDQcg',
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Welcome to My Portfolio',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Turning Ideas into Reality',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              // About Section
              Padding(
                padding: EdgeInsets.all(20),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'I am a passionate developer with a keen interest in creating innovative solutions. '
                          'My journey in technology has equipped me with various skills in web and mobile development. '
                          'I believe in writing clean, efficient code and creating user-friendly applications.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
