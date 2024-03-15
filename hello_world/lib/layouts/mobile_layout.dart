import 'package:flutter/material.dart';
import 'package:hello_world/features/home/screen/HomeScreen.dart';
import 'package:hello_world/features/user_profile/screen/UserProfileScreen.dart';

import '../features/news/screen/NewScreen.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            controller: _pageController,
            onPageChanged: onPageChange,
            children: List.generate(
                3,
                (index) => index == 0
                    ? const HomeScreen()
                    : index == 1
                        ? const NewScreen()
                        : const UserProfileScreen())),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    _pageController.jumpToPage(0);
                  },
                  icon: const Icon(Icons.home_rounded)),
              IconButton(
                  onPressed: () {
                    _pageController.jumpToPage(1);
                  },
                  icon: const Icon(Icons.newspaper)),
              IconButton(
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  icon: const Icon(Icons.person)),
            ],
          ),
        ));
  }

  void onPageChange(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
