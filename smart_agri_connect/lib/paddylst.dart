import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/Crops_cntr.dart';

class Paddylst extends StatelessWidget {
  const Paddylst({super.key});

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
                    'Paddy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CropsCntr(
                    img: AssetImage('assets/paddy.png'),
                    txt1: 'Ramesh Patel',
                    txt2: 'Paddy Farmer',
                    txt3: 'Bandarulanka,\nEast Godavari,\nAndhra Pradesh.',
                    c1: Colors.grey,
                    c2: Colors.green,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/paddy1.png'),
                    txt1: 'Subhas Mondal',
                    txt2: 'Paddy Farmer',
                    txt3: 'Kalna,\nPurba Bardhaman,\nWest Bengal.',
                    c1: const Color.fromARGB(255, 98, 202, 250),
                    c2: Colors.blue,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/paddy2.png'),
                    txt1: 'Pratap Yadav',
                    txt2: 'Paddy Farmer',
                    txt3: 'Gyanpur,\nBhadohi,\nUttar Pradesh.',
                    c1: const Color.fromARGB(255, 246, 135, 102),
                    c2: Colors.deepOrange,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/paddy3.png'),
                    txt1: 'Suresh Reddy',
                    txt2: 'Paddy Farmer',
                    txt3: 'Husnabad,\nSiddipet,\nTelangana.',
                    c1: const Color.fromARGB(255, 161, 128, 250),
                    c2: Colors.deepPurple,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/paddy4.png'),
                    txt1: 'Rajesh Netam',
                    txt2: 'Paddy Farmer',
                    txt3: 'Dongargarh,\nRajnandgaon,\nChhattisgarh.',
                    c1: Colors.lightGreenAccent,
                    c2: Colors.green,
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
