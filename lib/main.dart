import 'package:flutter/material.dart';
import 'package:travel_app/pages/create_account_page.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:travel_app/pages/profile_page.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : LoginPage(),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
