import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:job_finder/screens/chat/chat_screen.dart';
import 'package:job_finder/screens/home/home_screen.dart';
import 'package:job_finder/screens/jobs/job_screen.dart';
import 'package:job_finder/utils/colors.dart';

import 'screens/job_post/job_post_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  int _selectedIndex = 0;
  List<Widget> page = [
    const HomeScreen(),
    const JobsScreen(),
    const ChatSCreen(),
    Container(
      color: Colors.orange,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const JobPostScreen())),
        elevation: 10,
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          activeColor: kPrimaryColor,
          inactiveColor: kTertiaryColor,
          backgroundColor: kAccentColor,
          elevation: 0,
          iconSize: 28,
          notchMargin: 10,
          icons: const [
            CupertinoIcons.house_fill,
            CupertinoIcons.briefcase_fill,
            CupertinoIcons.chat_bubble_fill,
            CupertinoIcons.person_fill
          ],
          activeIndex: _selectedIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: page[_selectedIndex],
    );
  }
}
