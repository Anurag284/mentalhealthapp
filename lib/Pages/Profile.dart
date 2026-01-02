import 'package:flutter/material.dart';
import 'Loginpage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), backgroundColor: Colors.blue[600]),
      body: SizedBox(
        child: ElevatedButton(
          onPressed:
              () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Loginpage()),
                (route) => false,
              ),
          child: Text('Logout'),
        ),
      ),
    );
  }
}
