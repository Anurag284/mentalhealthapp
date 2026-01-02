import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Profile.dart';
import 'Message.dart';

class MainbottomNav extends StatefulWidget {
  const MainbottomNav({super.key});

  @override
  State<MainbottomNav> createState() => _MainbottomNavState();
}

class _MainbottomNavState extends State<MainbottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [Homepage(), Message(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            activeIcon: Icon(Icons.email),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
