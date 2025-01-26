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

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key});

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                const SizedBox(height: 24),
                // User greeting and notification
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
                        const SizedBox(width: 8),
                        Text(
                          "Hello, Kutus",
                          style: GoogleFonts.outfit(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        const Icon(Icons.notifications_none_rounded, size: 30),
                        if (true) // You can replace `true` with your notification check
                          const Positioned(
                            top: 2,
                            right: 2,
                            child: Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Text(
                  "Where do you\nwant to explore today?",
                  style: GoogleFonts.outfit(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 18),
                // Search destination bar
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(8),
                  ),
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
                        padding: const EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 165, 165, 165),
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.search_rounded,
                          color: Color.fromARGB(255, 165, 165, 165),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                // Categories Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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
                const SizedBox(height: 18),
                // Category ListView
                Container(
                  height: 68,
                  padding: const EdgeInsets.only(bottom: 4),
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
                const SizedBox(height: 18),
                // Favorite Places Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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
                const SizedBox(height: 18),
                // Favorite Places ListView
                Container(
                  height: 210,
                  padding: const EdgeInsets.only(bottom: 4),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FavoritePlaceHomePageCard(
                        name: favoritePlaceStaticData[index]['name'],
                        imageUrl: favoritePlaceStaticData[index]['imageUrl'],
                        location: favoritePlaceStaticData[index]['location'],
                        rating: favoritePlaceStaticData[index]['rating'].toDouble(),
                      );
                    },
                    itemCount: favoritePlaceStaticData.length,
                  ),
                ),
                const SizedBox(height: 18),
                // Popular Packages Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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
                // Display the selected page, // Display the page based on selected index
              ],
            ),
          ),
        ),
      );
  }
}