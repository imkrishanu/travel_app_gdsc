import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/components/Bottom_Nav_Bar.dart';
import 'package:travel_app/components/CategoryHomePageCard.dart';
import 'package:travel_app/components/FavoritePlaceHomePageCard.dart';
import 'package:travel_app/data/CategoryData.dart';
import 'package:travel_app/data/FavoritePlaceData.dart';
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
  //storing selected index
  int _selectedIndex = 0;

  //selecting index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void onTabChange()
  //pages to display
  final List<Widget> _pages = [
    const TripsPage(),
    const WishlistPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      bottomNavigationBar: BottomNavBar(
          //onTabChange: (index) => navigateBottomBar(index),
          ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          minRadius: 20,
                          backgroundImage: NetworkImage(
                              "https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "Hello, Kutus" ,
                          style: GoogleFonts.outfit(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Icon(Icons.notifications_none_rounded,
                            size: 30), // The main notification icon
                        if (true)
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Icon(
                              Icons.circle, // Red circle icon
                              size: 10, // Small size for the dot
                              color: Colors.red, // Red color for the dot
                            ),
                          ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Where do you\nwant to explore today?",
                  style: GoogleFonts.outfit(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: MediaQuery.of(this.context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search destination",
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 165, 165, 165),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 165, 165, 165),
                            ),
                          ),
                        ),
                        child: Icon(
                          Icons.search_rounded,
                          color: Color.fromARGB(255, 165, 165, 165),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "Choose Category",
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.outfit(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 165, 165, 165),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 68,
                  padding: EdgeInsets.only(bottom: 4),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryHomePageCard(
                        name: categoryStaticData[index]['name'],
                        iconUrl: categoryStaticData[index]['iconUrl'],
                      );
                    },
                    itemCount: categoryStaticData.length,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "Favorite Place",
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Explore",
                      style: GoogleFonts.outfit(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 165, 165, 165),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 210,
                  padding: EdgeInsets.only(bottom: 4),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FavoritePlaceHomePageCard(
                        name: favoritePlaceStaticData[index]['name'],
                        imageUrl: favoritePlaceStaticData[index]['imageUrl'],
                        location: favoritePlaceStaticData[index]['location'],
                        rating:
                            favoritePlaceStaticData[index]['rating'].toDouble(),
                      );
                    },
                    itemCount: favoritePlaceStaticData.length,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      "Popular Package",
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.outfit(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 165, 165, 165),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
