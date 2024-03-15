import 'package:flutter/material.dart';
import 'package:flutter_demo/features/home/screen/HomeScreen.dart';

class MobileLayout extends StatefulWidget{
  const MobileLayout ({super.key});

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
        children: List.generate(3, (index) => index == 0 ? HomeScreen() : const SizedBox())
      ),
    );
  }

  void onPageChange(int page){
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