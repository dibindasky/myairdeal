import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class ScreenNavbar extends StatelessWidget {
  const ScreenNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.blueAccent,
    items: const [
      CurvedNavigationBarItem(
        child: Icon(Icons.home_outlined),
        label: 'Home',
      ),
      CurvedNavigationBarItem(
        child: Icon(Icons.search),
        label: 'Search',
      ),
      CurvedNavigationBarItem(
        child: Icon(Icons.chat_bubble_outline),
        label: 'Chat',
      ),
      CurvedNavigationBarItem(
        child: Icon(Icons.newspaper),
        label: 'Feed',
      ),
      CurvedNavigationBarItem(
        child: Icon(Icons.perm_identity),
        label: 'Personal',
      ),
    ],
    onTap: (index) {
      // Handle button tap
    },
  ),
  body: Container(color: Colors.blueAccent),
);
  }
}