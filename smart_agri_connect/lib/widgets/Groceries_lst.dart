import 'package:flutter/material.dart';

class GroceriesLst extends StatelessWidget {
  final ImageProvider img;
  final String txt1;
  final String txt2;
  final String txt3;
  final String txt4;
  final Color c;
  const GroceriesLst({
    super.key,
    required this.img,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.txt4,
    required this.c,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFFf9fafc),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          spacing: 16,
          children: [
            CircleAvatar(backgroundImage: img, radius: 24),
            SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    txt1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    txt2,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  txt3,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(txt4, style: TextStyle(fontSize: 14, color: c)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
