import 'package:flutter/material.dart';
import 'package:instagram_clone_app/shared/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mobileBackgroundColor,
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: const Text(
            "Profile Screen",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
