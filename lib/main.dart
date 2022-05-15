import 'package:coffeeui/homepage.dart';
import 'package:coffeeui/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}




