import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
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
                    Text('Your Trips',
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