import 'package:flutter/material.dart';
import 'package:instagram/Screen/Splash/splashscreen.dart';
import 'package:instagram/SignUp/SignUpScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}


