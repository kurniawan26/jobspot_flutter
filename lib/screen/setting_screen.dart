import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Setting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Account',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('Change password'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Change email'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Change phone number'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 16),
            Text(
              'Notification',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('Notification setting'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 16),
            Text(
              'About',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('About us'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Privacy policy'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Term of service'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
