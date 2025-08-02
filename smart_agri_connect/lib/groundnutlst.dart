import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/Crops_cntr.dart';

class Groundnutlst extends StatelessWidget {
  const Groundnutlst({super.key});

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
                    'Ground Nuts',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CropsCntr(
                    img: AssetImage('assets/groundnut.png'),
                    txt1: 'Dinesh Solanki',
                    txt2: 'Groundnut Farmer',
                    txt3: 'Gondal,\nRajkot,\nGujarat.',
                    c1: const Color.fromARGB(255, 109, 130, 248),
                    c2: Colors.indigo,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/groundnut1.png'),
                    txt1: 'Ravi Reddy',
                    txt2: 'Groundnut Farmer',
                    txt3: 'Ponnur,\nGuntur,\nAndhra Pradesh.',
                    c1: const Color.fromARGB(255, 167, 250, 158),
                    c2: const Color.fromARGB(255, 254, 3, 7),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/groundnut2.png'),
                    txt1: 'Rella Murugan',
                    txt2: 'Groundnut Farmer',
                    txt3: 'Virudhachalam,\nCuddalore,\nTamil Nadu.',
                    c1: const Color.fromARGB(255, 121, 248, 244),
                    c2: const Color.fromARGB(255, 24, 4, 248),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/groundnut3.png'),
                    txt1: 'Basavaraj Patil',
                    txt2: 'Groundnut Farmer',
                    txt3: 'Tiptur,\nTumakuru,\nKarnataka.',
                    c1: const Color.fromARGB(255, 228, 111, 235),
                    c2: const Color.fromARGB(255, 157, 5, 239),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/groundnut4.png'),
                    txt1: 'Suresh Jadhav',
                    txt2: 'Groundnut Farmer',
                    txt3: 'Phaltan,\nSatara,\nMaharashtra.',
                    c1: const Color.fromARGB(255, 240, 198, 119),
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
