import 'package:flutter/material.dart';
import 'package:smart_agri_connect/available_crps.dart';
import 'package:smart_agri_connect/buyer_home.dart';
import 'package:smart_agri_connect/my_basket.dart';
import 'package:smart_agri_connect/profile_screen.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  final List<Widget> screens = [
    Buyer_home(),
    MyBasket(),
    AvailableCrps(),
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
            icon: Icon(Icons.inventory_2_outlined),
            label: "My Basket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.eco_outlined),
            label: "Available Products",
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