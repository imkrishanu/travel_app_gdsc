import 'package:flutter/material.dart';
import 'package:travel_app/components/TextField.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage ({super.key});

  TextEditingController newusernameController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:
          Center(
            child: Column(
              children: [
                const SizedBox(height: 170),
          
          
                const Text('WANDER',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  ),
                ),
                
                const SizedBox(height: 135),
                // Email
                Textfield(controller: usernameController,
                hintText: 'Email/username',
                obscureText: false,
                labelText: 'Email/username'),
          
                const SizedBox(height: 30),
                // Password
                Textfield(controller: passwordController,
                hintText: "Password",
                obscureText: true,
                labelText: 'Password'
                ),
          
                const SizedBox(height: 10),
          
                //forgot password add here
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33.0),
                  child: Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password',
                      style: TextStyle(color: Colors.grey)
                      ,),
                    ],
                  ),
                ),
                const SizedBox(height: 110), 

                Container(margin: EdgeInsets.all(10),decoration: 
                BoxDecoration(border: Border.all(color: Color.fromARGB(255, 165, 165, 165),width: 1),borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade100),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Create Account',
                        style: TextStyle(color: Colors.black)
                        ,),
                      ],
                    ),
                  ),
                ),

                Container(margin: EdgeInsets.all(10),decoration: 
                BoxDecoration(borderRadius: BorderRadius.circular(14),
                color: Color.fromARGB(255, 252, 210, 64),),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign In',
                        style: TextStyle(color: Colors.black)
                        ,),
                      ],
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
