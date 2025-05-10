import 'package:flutter/material.dart';
import '../widgets/page_wrapper.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      currentIndex: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('Gallery'), elevation: 0),
        body: GridView.count(
          padding: EdgeInsets.all(16),
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: List.generate(6, (index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/500/500?random=$index',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
