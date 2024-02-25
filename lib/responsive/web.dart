import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/screens/add_post.dart';
import 'package:instagram_clone_app/screens/home.dart';
import 'package:instagram_clone_app/screens/profile.dart';
import 'package:instagram_clone_app/screens/search.dart';
import 'package:instagram_clone_app/shared/colors.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  final PageController _pageController = PageController();
  int navigationIndex = 0;

  Color navigationColor(int index) {
    return navigationIndex == index ? primaryColor : secondaryColor;
  }

  void navigate(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      navigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: navigationColor(0),
            ),
            onPressed: () => navigate(0),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: navigationColor(1),
            ),
            onPressed: () => navigate(1),
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: navigationColor(2),
            ),
            onPressed: () => navigate(2),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: navigationColor(3),
            ),
            onPressed: () => navigate(3),
          ),
          IconButton(
              icon: Icon(
                Icons.person,
                color: navigationColor(4),
              ),
              onPressed: () => navigate(4)),
        ],
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),
          height: 32,
        ),
      ),
      body: PageView(
          // onPageChanged: (index) {},
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [Home(), Search(), AddPost(), Profile()]),
    );
  }
}
