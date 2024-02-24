import 'package:flutter/material.dart';
import 'package:instagram_clone_app/shared/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mobileBackgroundColor,
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: const Text(
            "Search Screen",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
