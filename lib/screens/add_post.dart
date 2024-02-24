import 'package:flutter/material.dart';
import 'package:instagram_clone_app/shared/colors.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mobileBackgroundColor,
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: const Text(
            "Add Post Screen",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
