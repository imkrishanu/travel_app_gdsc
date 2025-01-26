import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/components/TextField.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/pages/login_page.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  TextEditingController newemailController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();

  Future<void> _createAccount(context) async {
    try {
      final email = newemailController.text.trim();
      final password = newpasswordController.text.trim();

      // Create user in Firebase
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // Save username to Firestore (optional, depends on your use case)
      //FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
      //   'username': _usernameController.text.trim(),
      // });

      // Navigate back to login page after account creation
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } on FirebaseAuthException catch (e) {
      String errorMessage = "An error occurred";

      // Handle Firebase registration error codes
      if (e.code == 'email-already-in-use') {
        errorMessage = "The email is already in use.";
      }

      // Show the error message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Account Creation Error"),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 90),

              Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Create your account',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ),

              const SizedBox(height: 135),
              // Email
              Textfield(
                  controller: newemailController,
                  hintText: 'Email/username',
                  obscureText: false,
                  labelText: 'Email/username'),

              const SizedBox(height: 30),
              // Password
              Textfield(
                  controller: newpasswordController,
                  hintText: "Password",
                  obscureText: true,
                  labelText: 'Password'),

              const SizedBox(height: 110),

              InkWell(
                onTap: () {
                  _createAccount(context);
                },
                child: Container(
                  margin: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromARGB(255, 252, 210, 64),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create Account',
                          style: GoogleFonts.outfit(
                              color: Colors.black, fontSize: 18),
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
