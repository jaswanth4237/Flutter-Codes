import 'package:flutter/material.dart';

class ContainerLst extends StatelessWidget {
  final IconData icn;
  final Color C;
  final Color c;
  final String txt;
  const ContainerLst({
    super.key,
    required this.icn,
    required this.C,
    required this.c,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: C,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icn, color: c),
            Text(txt, style: TextStyle(color: c)),
          ],
        ),
      ),
    );
  }
}
