import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LangPage extends StatefulWidget {
  const LangPage({super.key});

  @override
  State<LangPage> createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
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
                    Text('Languages',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //  MaterialPageRoute(
                  //    builder: (context) => OpenProfileInfo()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 25,left: 25),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 165, 165, 165), width: 1),
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'English',
                          style: GoogleFonts.outfit(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //  MaterialPageRoute(
                  //    builder: (context) => OpenProfileInfo()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 25,left: 25),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 165, 165, 165), width: 1),
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hindi',
                          style: GoogleFonts.outfit(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}