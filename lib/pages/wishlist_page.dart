import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Your Wishlist',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
