import 'package:flutter/material.dart';

class CropsCntr extends StatelessWidget {
  final AssetImage img;
  final String txt1;
  final String txt2;
  final String txt3;
  final Color c1;
  final Color c2;
  final Color c3;
  const CropsCntr({
    super.key,
    required this.img,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.c1,
    required this.c2,
    required this.c3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: c1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 4,
        children: [
          Container(
            width: 150,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: img, fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              border: Border.all(color: c2, width: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: c3,
                  ),
                ),
                Text(
                  txt2,
                  style: TextStyle(
                    color: c3,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(txt3, style: TextStyle(color: c3, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
