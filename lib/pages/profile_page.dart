import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/pages/languages.dart';
import 'package:travel_app/pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                    Text('Your Profile',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      minRadius: 35,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Kutus,India',
                        style: GoogleFonts.outfit(
                            color: Colors.black, fontSize: 16),
                      ),
                    ),
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
                  margin: EdgeInsets.only(right: 25, left: 25),
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
                          'Personal Information',
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
                  margin: EdgeInsets.only(right: 25, left: 25),
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
                          'Notification',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LangPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 25, left: 25),
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
                          'Languages',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 25, left: 25),
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
                          'Log Out',
                          style: GoogleFonts.outfit(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
