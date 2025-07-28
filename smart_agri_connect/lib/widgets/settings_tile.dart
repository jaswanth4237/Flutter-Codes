import 'package:flutter/material.dart';

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
          backgroundColor:
              isLogout ? Colors.red.shade100 : Colors.grey.shade300,
          child: Icon(
            icon,
            color: isLogout ? Colors.red : Colors.black87,
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
          
        },
      ),
    );
  }
}