import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritePlaceHomePageCard extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String location;
  final double rating;

  // Constructor to pass data to the card
  FavoritePlaceHomePageCard(
      {required this.name,
      required this.imageUrl,
      required this.location,
      required this.rating});

  @override
  _FavoritePlaceHomePageCardState createState() =>
      _FavoritePlaceHomePageCardState();
}

class _FavoritePlaceHomePageCardState extends State<FavoritePlaceHomePageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 160,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(
            widget.imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4, 1.0], // 60% transparent and 40% black
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
                ),
                Container(
                  width: double.infinity,
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          widget.location,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: widget.rating, // Set the rating to show
                      minRating: 0.1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18,
                      ignoreGestures: true, // Disable interaction
                      unratedColor: Colors.white,
                      itemBuilder: (context, index) {
                        if (index < 3.5) {
                          // If the rating is greater than the index, make it amber
                          return Icon(
                            Icons.star,
                            color: index < 3.5
                                ? Colors.amber
                                : Colors
                                    .white, // Active = amber, Inactive = white
                          );
                        } else {
                          return Icon(
                            Icons.star,
                            color:
                                Colors.white, // The background stars are white
                          );
                        }
                      },
                      onRatingUpdate: (double value) {},
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.rating.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
