import 'package:flutter/material.dart';

class MarketInsts extends StatelessWidget {
  final Color c1;
  final Color c2;
  final Color c3;
  final IconData icn;
  final String t1;
  final String t2;
  const MarketInsts({
    super.key,
    required this.c1,
    required this.c2,
    required this.c3,
    required this.icn,
    required this.t1,
    required this.t2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: c1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(shape: BoxShape.circle, color: c2),
              child: Icon(icn, color: c3, size: 28),
            ),
            Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(t2, style: TextStyle(color: Colors.black, fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
