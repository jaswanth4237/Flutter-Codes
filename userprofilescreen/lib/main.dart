import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(DevicePreview(builder: (context) => const Start2222()));
}

class Start2222 extends StatelessWidget {
  const Start2222({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UserProfileStyled(),
    );
  }
}

class UserProfileStyled extends StatelessWidget {
  const UserProfileStyled({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9), 
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          // Profile Info Card
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 206, 236, 215), 
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 26,
                  backgroundColor: Color(0xFFD8B9F3), // Soft lavender color
                  child: Icon(Icons.person, size: 28, color: Colors.white),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Ram Pradesh',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '9186458040',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Options List
          Expanded(
            child: ListView(
              children: const [
                ProfileTileWithBackground(
                  icon: Icons.shopping_basket,
                  title: 'My Orders',
                ),
                ProfileTileWithBackground(
                  icon: Icons.location_on_outlined,
                  title: 'Delivery Addresses',
                ),
                ProfileTileWithBackground(
                  icon: Icons.payment_outlined,
                  title: 'Payment Methods',
                ),
                ProfileTileWithBackground(
                  icon: Icons.notifications_none,
                  title: 'Notifications',
                ),
                Divider(height: 30),
                ProfileTileWithBackground(
                  icon: Icons.logout,
                  title: 'Logout',
                  isLogout: true,
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}

//  Profile Tile with Background
class ProfileTileWithBackground extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;

  const ProfileTileWithBackground({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 228, 250, 220), // Light gray background
      child: ProfileTile(
        icon: icon,
        title: title,
        isLogout: isLogout,
      ),
    );
  }
}

//  Actual Tile
class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.black),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout ? Colors.red : Colors.black,
          fontWeight: isLogout ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
      trailing: isLogout ? null : const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Navigation or action
      },
    );
  }
}
