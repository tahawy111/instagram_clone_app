import 'package:flutter/material.dart';
import 'package:instagram_clone_app/responsive/mobile.dart';
import 'package:instagram_clone_app/responsive/responsive.dart';
import 'package:instagram_clone_app/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            displayLarge: TextStyle(color: Colors.white),
            displayMedium: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
            titleMedium: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white)),
      home: const Responsive(
          myMobileScreen: MobileScreen(), myWebScreen: WebScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
