import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find your dream job',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search job',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Popular job',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(
                      label: Text('Frontend Developer'),
                    ),
                    Chip(
                      label: Text('Backend Developer'),
                    ),
                    Chip(
                      label: Text('Fullstack Developer'),
                    ),
                    Chip(
                      label: Text('Mobile Developer'),
                    ),
                    Chip(
                      label: Text('DevOps Engineer'),
                    ),
                    Chip(
                      label: Text('UI/UX Designer'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
