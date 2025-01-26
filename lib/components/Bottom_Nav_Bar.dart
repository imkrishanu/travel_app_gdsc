import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int) onTabChange;
  final List<dynamic> pages;
  BottomNavBar({super.key,required this.onTabChange,required this.pages});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange(value),
        tabs: const [ GButton(icon: Icons.home,
        text: 'Home',
      ),
      GButton(
        icon: Icons.checklist,
        text: 'My Trips',
        ),
      GButton(
        icon: Icons.favorite_rounded,
        text: 'Wishlist',
        ),
      GButton(
        icon: Icons.person_sharp,
        text: 'My Profile',
        ),
      ],
      ),
    );
  }
}
