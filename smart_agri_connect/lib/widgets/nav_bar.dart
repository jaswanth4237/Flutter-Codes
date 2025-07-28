import 'package:flutter/material.dart';
import 'package:smart_agri_connect/market.dart';
import 'package:smart_agri_connect/profile_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 4;

  final List<Widget> screens = [
    Center(child: Text("Home Screen")),
    // Center(child: Text("Market Screen")),
    MarketPage(),
    Center(child: Text("My Crops Screen")),
    Center(child: Text("Weather Screen")),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: "My Crops",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny_outlined),
            label: "Weather",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
