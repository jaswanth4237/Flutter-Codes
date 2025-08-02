import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/Crops_cntr.dart';

class Wheatlst extends StatelessWidget {
  const Wheatlst({super.key});

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
                    'Wheat',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CropsCntr(
                    img: AssetImage('assets/wheat.png'),
                    txt1: 'Ganesh Thakur',
                    txt2: 'Wheat Farmer',
                    txt3: 'Shahpur,\nBetul,\nMadhya Pradesh.',
                    c1: const Color.fromARGB(255, 248, 180, 77),
                    c2: Colors.blue,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/wheat1.png'),
                    txt1: 'Mohan Verma',
                    txt2: 'Wheat Farmer',
                    txt3: 'Fatehpur,\nBarabanki,\nUttar Pradesh.',
                    c1: const Color.fromARGB(255, 190, 242, 125),
                    c2: Colors.green,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/wheat2.png'),
                    txt1: 'Harpreet Singh',
                    txt2: 'Wheat Farmer',
                    txt3: 'Tarn Taran Sahib,\nTarn Taran,\nPunjab.',
                    c1: const Color.fromARGB(255, 127, 138, 241),
                    c2: const Color.fromARGB(255, 4, 138, 248),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/wheat3.png'),
                    txt1: 'Surender Dahiya',
                    txt2: 'Wheat Farmer',
                    txt3: 'Samalkha,\nPanipat,\nHaryana.',
                    c1: const Color.fromARGB(255, 251, 119, 218),
                    c2: const Color.fromARGB(255, 239, 5, 122),
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/wheat4.png'),
                    txt1: 'Kamlesh Solanki',
                    txt2: 'Wheat Farmer',
                    txt3: 'Vadnagar,\nMehsana,\nGujarat.',
                    c1: const Color.fromARGB(255, 238, 250, 128),
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
