import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryHomePageCard extends StatefulWidget {
  final String name;
  final String iconUrl;

  // Constructor to pass data to the card
  CategoryHomePageCard({required this.name, required this.iconUrl});

  @override
  _CategoryHomePageCardState createState() => _CategoryHomePageCardState();
}

class _CategoryHomePageCardState extends State<CategoryHomePageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        // Set fixed width for each card
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 216, 216, 216),
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 216, 216, 216),
                  borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.all(6),
              width: 50,
              height: 50,
              child: Image.network(
                widget.iconUrl, // Load icon from URL
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Text(
              widget.name,
              style:
                  GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
