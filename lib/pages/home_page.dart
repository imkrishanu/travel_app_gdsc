import 'package:flutter/material.dart';
import 'package:travel_app/components/Bottom_Nav_Bar.dart';
import 'package:travel_app/pages/profile_page.dart';
import 'package:travel_app/pages/trips_page.dart';
import 'package:travel_app/pages/wishlist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //storing selected index
  int _selectedIndex = 0;

  //selecting index
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [

    const TripsPage(),

    const WishlistPage(),

    const ProfilePage(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        // onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon:Icon(Icons.menu,
          color: Colors.black,
          ),
          onPressed: () {

          },)
      ),
    );
  }
}