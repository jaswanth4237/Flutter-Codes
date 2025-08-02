import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/Crops_cntr.dart';

class Bananalst extends StatelessWidget {
  const Bananalst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/logo1.png',
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Smart AgriConnect",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Connenting Framers Directly',
              style: TextStyle(color: Colors.black45, fontSize: 14),
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications_outlined, size: 28),
          SizedBox(width: 16),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.orange[600],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text(
                    'Banana',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CropsCntr(
                    img: AssetImage('assets/banana.png'),
                    txt1: 'Arulmani Nagesh',
                    txt2: 'Banana Farmer',
                    txt3: 'Pollachi,\nCoimbatore,\nTamil Nadu.',
                    c1: Colors.limeAccent,
                    c2: Colors.lime,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/banana1.png'),
                    txt1: 'Sanjay Shinde',
                    txt2: 'Banana Farmer',
                    txt3: 'Raver,\nJalgaon,\nMaharashtra.',
                    c1: const Color.fromARGB(255, 170, 140, 240),
                    c2: const Color.fromARGB(255, 0, 125, 243),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/banana2.png'),
                    txt1: 'Venkatesh Reddy',
                    txt2: 'Banana Farmer',
                    txt3: 'Kovur,\nNellore,\nAndhra Pradesh.',
                    c1: const Color.fromARGB(255, 248, 136, 121),
                    c2: const Color.fromARGB(255, 24, 4, 248),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/banana3.png'),
                    txt1: 'Anup Boro',
                    txt2: 'Banana Farmer',
                    txt3: 'Mangaldoi,\nDarrang,\nAssam.',
                    c1: const Color.fromARGB(255, 135, 245, 140),
                    c2: const Color.fromARGB(255, 157, 5, 239),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/banana4.png'),
                    txt1: 'Abhishek Kumar',
                    txt2: 'Banana Farmer',
                    txt3: 'Barh,\nPatna,\nBihar.',
                    c1: const Color.fromARGB(255, 132, 217, 248),
                    c2: Colors.deepPurple,
                    c3: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
