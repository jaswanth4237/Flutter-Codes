import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/Crops_cntr.dart';

class Tomatolst extends StatelessWidget {
  const Tomatolst({super.key});

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
                    'Tomato',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CropsCntr(
                    img: AssetImage('assets/tomato.png'),
                    txt1: 'Kari Sreenivasulu',
                    txt2: 'Tomato Farmer',
                    txt3: 'Punganur,\nChittoor,\nAndhra Pradesh',
                    c1: const Color.fromARGB(255, 133, 246, 127),
                    c2: Colors.green,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/tomato1.png'),
                    txt1: 'Nagesh Reddy',
                    txt2: 'Tomato Farmer',
                    txt3: 'Manvi,\nRaichur,\nKarnataka.',
                    c1: const Color.fromARGB(255, 248, 123, 123),
                    c2: Colors.red,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/tomato2.png'),
                    txt1: 'Mahesh Patel',
                    txt2: 'Tomato Farmer',
                    txt3: 'Khategaon,\nDewas,\nMadhya Pradesh.',
                    c1: const Color.fromARGB(255, 127, 235, 241),
                    c2: const Color.fromARGB(255, 24, 4, 248),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/tomato3.png'),
                    txt1: 'Subrata Ghosh',
                    txt2: 'Tomato Farmer',
                    txt3: 'Ranaghat,\nNadia,\nWest Bengal.',
                    c1: const Color.fromARGB(255, 210, 141, 240),
                    c2: const Color.fromARGB(255, 157, 5, 239),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/tomato4.png'),
                    txt1: 'Rajesh Netam',
                    txt2: 'Tomato Farmer',
                    txt3: 'Kanker,\nKanker,\nChhattisgarh.',
                    c1: const Color.fromARGB(255, 128, 136, 250),
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
