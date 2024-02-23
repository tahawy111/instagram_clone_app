import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_app/screens/add_post.dart';
import 'package:instagram_clone_app/screens/home.dart';
import 'package:instagram_clone_app/screens/profile.dart';
import 'package:instagram_clone_app/screens/search.dart';
import 'package:instagram_clone_app/shared/colors.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final PageController _pageController = PageController();
  int navigationIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobile Screen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      bottomNavigationBar: CupertinoTabBar(
        activeColor: primaryColor,
        inactiveColor: secondaryColor,
        currentIndex: navigationIndex,
        backgroundColor: mobileBackgroundColor,
        onTap: (index) {
          // print("index ------------$index------------");
          // navigate to the tabed page
          _pageController.jumpToPage(index);

          setState(() {
            navigationIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: ""),
        ],
      ),
      body: PageView(
          // onPageChanged: (index) {},
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [Home(), Search(), AddPost(), Profile()]),
    );
  }
}
