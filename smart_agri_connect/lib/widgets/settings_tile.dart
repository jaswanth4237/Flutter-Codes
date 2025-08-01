import 'package:flutter/material.dart';
import 'package:smart_agri_connect/login_page.dart';

class SettingsTile extends StatelessWidget {
   final IconData icon;
  final String title;
  final bool isLogout;
  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isLogout ? Colors.red.shade50 : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
             backgroundColor: Colors.white,
          child: Icon(
            icon,
            color: isLogout ? Colors.red : Colors.green,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isLogout ? Colors.red : Colors.black87,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        },
      ),
    );
  }
}