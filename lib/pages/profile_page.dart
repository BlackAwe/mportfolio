import 'package:flutter/material.dart';
import '../widgets/page_wrapper.dart';

// Profile Page
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      currentIndex: 1,
      child: Scaffold(
        appBar: AppBar(title: Text('My Profile'), elevation: 0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white70,
                            backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/v2/D5603AQGZQ7QaQivpzw/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1724675540333?e=1750896000&v=beta&t=SlrcjXXEcce8AN20IlNkQLBUP43tG9AiLRZCFSeDQcg',
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Justin Aquilizan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Third Year Student',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Basic Details Section
              ProfileSection(
                title: 'Basic Details',
                child: Column(
                  children: [
                    ProfileInfoTile(
                      icon: Icons.calendar_today,
                      title: 'Date of Birth',
                      subtitle: 'February 3, 2004',
                    ),
                    ProfileInfoTile(
                      icon: Icons.location_on,
                      title: 'Location',
                      subtitle: 'Calamba City, Laguna',
                    ),
                    ProfileInfoTile(
                      icon: Icons.email,
                      title: 'Email',
                      subtitle: 'aquilizanjustin89@gmail.com',
                    ),
                    ProfileInfoTile(
                      icon: Icons.phone,
                      title: 'Phone',
                      subtitle: '09614219038',
                    ),
                  ],
                ),
              ),

              // Skills Section
              ProfileSection(
                title: 'Skills',
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children:
                      [
                            'HTML',
                            'CSS',
                            'JavaScript',
                            'React',
                            'PHP',
                            'Laravel',
                            'Node.js',
                            'MySQL',
                            'PostgreSQL',
                            'Python',
                            'Git',
                            'Project Management',
                          ]
                          .map(
                            (skill) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(
                                  context,
                                ).primaryColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Theme.of(
                                    context,
                                  ).primaryColor.withOpacity(0.3),
                                ),
                              ),
                              child: Text(
                                skill,
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),

              // Projects Section
              ProfileSection(
                title: 'Projects',
                child: Column(
                  children: [
                    _buildProjectCard(
                      context,
                      'E-Commerce App',
                      'Laravel, React',
                      Icons.web,
                    ),
                    _buildProjectCard(
                      context,
                      'Project Management App',
                      'Laravel, SQLite, React',
                      Icons.dashboard,
                    ),
                  ],
                ),
              ),

              // Certificates Section
              ProfileSection(
                title: 'Certificates',
                child: Column(
                  children: [
                    _buildCertificateCard(
                      context,
                      'SQL Associate',
                      'DataCamp',
                      'Aug 2024',
                      Icons.badge,
                    ),
                    _buildCertificateCard(
                      context,
                      'Data Science Analytics',
                      'Project SPARTA',
                      'Sep 2022',
                      Icons.analytics,
                    ),
                    _buildCertificateCard(
                      context,
                      'Python Programming',
                      'DICT',
                      'Dec 2022',
                      Icons.code,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectCard(
    BuildContext context,
    String title,
    String technologies,
    IconData icon,
  ) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          child: Icon(icon, color: Theme.of(context).primaryColor),
        ),
        title: Text(title),
        subtitle: Text(technologies),
        dense: true,
      ),
    );
  }

  Widget _buildCertificateCard(
    BuildContext context,
    String title,
    String issuer,
    String date,
    IconData icon,
  ) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          child: Icon(icon, color: Theme.of(context).primaryColor),
        ),
        title: Text(title),
        subtitle: Text('$issuer • $date'),
        dense: true,
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final Widget child;

  const ProfileSection({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Divider(color: Colors.grey.shade300, thickness: 1.5),
          SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ProfileInfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Theme.of(context).primaryColor, size: 22),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
                Text(subtitle, style: TextStyle(color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
