import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/components/Bottom_Nav_Bar.dart';
import 'package:travel_app/components/CategoryHomePageCard.dart';
import 'package:travel_app/components/FavoritePlaceHomePageCard.dart';
import 'package:travel_app/data/CategoryData.dart';
import 'package:travel_app/data/FavoritePlaceData.dart';
import 'package:travel_app/pages/home_compo.dart';
import 'package:travel_app/pages/profile_page.dart';
import 'package:travel_app/pages/trips_page.dart';
import 'package:travel_app/pages/wishlist_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Store the selected index for the bottom navigation
  int _selectedIndex = 0;

  // Function to change the selected index
  void naviBotBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // Pages to display based on the selected index
  final List<Widget> _pages = [
    const HomeComponent(),
    const TripsPage(),
    const WishlistPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      // Set the Bottom Navigation Bar
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => naviBotBar(index),pages: _pages,
      ),
      body: _pages[_selectedIndex],
    );
  }
}

