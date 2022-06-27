import 'package:exercise_app/pages/home_page.dart';
import 'package:exercise_app/pages/practice_page.dart';
import 'package:exercise_app/pages/profile_page.dart';
import 'package:exercise_app/pages/rehab_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = const [
    HomePage(),
    RehabPage(),
    PracticePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        color: Colors.deepPurple[400],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
          child: GNav(
            gap: 5.0,
            backgroundColor: Colors.deepPurple[400]!,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.purple[200]!,
            padding: const EdgeInsets.all(15),
            selectedIndex: _selectedIndex,
            onTabChange: _navigateBottomBar,
            tabs: const [
              GButton(
                icon: CupertinoIcons.home,
                text: "Home",
              ),
              GButton(
                icon: CupertinoIcons.command,
                text: "Rehab",
              ),
              GButton(
                icon: CupertinoIcons.compass,
                text: "Practice",
              ),
              GButton(
                icon: CupertinoIcons.person,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
