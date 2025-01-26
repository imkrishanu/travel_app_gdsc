import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/components/TextField.dart';
import 'package:travel_app/pages/create_account_page.dart';
import 'package:travel_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void SignUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //signup ke baad hi loading ko ek laat maaro
      Navigator.pop(context);
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),);
    } on FirebaseAuthException catch (e) {
      //galat kuch daala fhir bhi laat khao
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        WrongEmail();
      } else if (e.code == 'wrong-password') {
        WrongPass();
      }
    }
  }

  void WrongEmail() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Email'),
        );
      },
    );
  }

  void WrongPass() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Password'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 170),

              Text(
                'WANDER',
                style: GoogleFonts.outfit(
                  color: Colors.black,
                  fontSize: 58,
                  fontWeight: FontWeight.w900,
                ),
              ),

              Text(
                '“Work, Travel, Save, Repeat.”',
                style: GoogleFonts.outfit(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const SizedBox(height: 115),
              // Email
              Textfield(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                  labelText: 'Email'),

              const SizedBox(height: 30),
              // Password
              Textfield(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  labelText: 'Password'),

              const SizedBox(height: 10),

              //forgot password add here
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: GoogleFonts.outfit(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 110),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAccountPage()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 165, 165, 165), width: 1),
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey.shade100),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create Account',
                          style: GoogleFonts.outfit(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: SignUserIn,
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 252, 210, 64),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign In',
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
