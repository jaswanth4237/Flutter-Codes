import 'package:flutter/material.dart';

class ContainerSqr extends StatelessWidget {
  final IconData icn;
  final Color c1;
  final Color c2;
  final String t1;
  final String t2;
  const ContainerSqr({
    super.key,
    required this.icn,
    required this.c1,
    required this.c2,
    required this.t1,
    required this.t2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
        color: c1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 12,
          children: [
            Row(
              spacing: 16,
              children: [
                Icon(icn, color: c2),
                Text(
                  t1,
                  style: TextStyle(color: c2, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(t2, style: TextStyle(color: c2)),
          ],
        ),
      ),
    );
  }
}
