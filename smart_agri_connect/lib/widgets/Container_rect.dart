import 'package:flutter/material.dart';

class ContainerRect extends StatelessWidget {
  final Color C;
  final Color c1;
  final Color c2;
  final IconData icn;
  final String t1;
  final String t2;
  final Widget wdgt;
  const ContainerRect({
    super.key,
    required this.C,
    required this.c1,
    required this.c2,
    required this.icn,
    required this.t1,
    required this.t2,
    required this.wdgt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: C,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(color: c1, shape: BoxShape.circle),
              child: Icon(icn, size: 28, color: c2),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  t1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(t2, style: TextStyle(color: Colors.black, fontSize: 14)),
                wdgt,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
