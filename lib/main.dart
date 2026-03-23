import 'package:flutter/material.dart';

void main() {
  runApp(const GalleryApp());
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  Widget buildImage(String url) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Image.network(url, height: 100, width: 100, fit: BoxFit.cover),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Gallery")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildImage("https://picsum.photos/200"),
              buildImage("https://picsum.photos/201"),
              buildImage("https://picsum.photos/202"),
            ],
          ),
        ],
      ),
    );
  }
}