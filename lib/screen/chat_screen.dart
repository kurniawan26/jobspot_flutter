import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chat with your friend',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search friend',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Recent chat',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              title: Text('John Doe'),
              subtitle: Text('Hello, how are you?'),
              trailing: Text('10:00'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              title: Text('Jane Doe'),
              subtitle: Text('I am fine, thank you'),
              trailing: Text('11:00'),
            ),
          ],
        ),
      ),
    );
  }
}
