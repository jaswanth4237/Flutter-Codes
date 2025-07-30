import 'package:flutter/material.dart';
import 'package:smart_agri_connect/My_Home.dart';
import 'package:smart_agri_connect/advise.dart';
import 'package:smart_agri_connect/market.dart';
import 'package:smart_agri_connect/profile_screen.dart';
import 'package:smart_agri_connect/sell.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  final List<Widget> screens = [
    My_Home(),
    MarketPage(),
    SalesUi(),
    AdvisePage(),
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
            label: "Sell Crops",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny_outlined),
            label: "Advise",
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
