import 'package:flutter/material.dart';
import 'package:smart_agri_connect/bananalst.dart';
import 'package:smart_agri_connect/groundnutlst.dart';
import 'package:smart_agri_connect/paddylst.dart';
import 'package:smart_agri_connect/tomatolst.dart';
import 'package:smart_agri_connect/wheatlst.dart';
import 'package:smart_agri_connect/widgets/Crops_cntr.dart';

class AvailableCrps extends StatefulWidget {
  const AvailableCrps({super.key});

  @override
  State<AvailableCrps> createState() => _AvailableCrpsState();
}

class _AvailableCrpsState extends State<AvailableCrps> {
  TextEditingController searchController = TextEditingController();
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
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Available Products",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    onSubmitted: (value) {
                      handleSearch(value, context);
                    },
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search Products...',
                      prefixIcon: Icon(Icons.search_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Text(
                      'Crops',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
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
                    img: AssetImage('assets/wheat.png'),
                    txt1: 'Ganesh Thakur',
                    txt2: 'Wheat Farmer',
                    txt3: 'Shahpur,\nBetul,\nMadhya Pradesh.',
                    c1: const Color.fromARGB(255, 248, 180, 77),
                    c2: Colors.blue,
                    c3: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: Text(
                      'Vegetables',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CropsCntr(
                    img: AssetImage('assets/tomato.png'),
                    txt1: 'Nagesh Reddy',
                    txt2: 'Tomato Farmer',
                    txt3: 'Manvi,\nRaichur,\nKarnataka.',
                    c1: const Color.fromARGB(255, 248, 123, 123),
                    c2: Colors.red,
                    c3: Colors.black,
                  ),
                  CropsCntr(
                    img: AssetImage('assets/onion.png'),
                    txt1: 'Shankar Pawar',
                    txt2: 'Onion Farmer',
                    txt3: 'Lasalgaon,\nNashik,\nMaharashtra.',
                    c1: Colors.lightBlueAccent,
                    c2: Colors.blue,
                    c3: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Text(
                      'Fruits',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
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
                    img: AssetImage('assets/guava.png'),
                    txt1: 'Ravinder Reddy',
                    txt2: 'Guava Farmer',
                    txt3: 'Jammikunta,\nKarimnagar,\nTelangana.',
                    c1: Colors.cyanAccent,
                    c2: Colors.cyan,
                    c3: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 240),
                    child: Text(
                      'Oil Seeds',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
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
                    img: AssetImage('assets/soybean.png'),
                    txt1: 'Dinesh Verma',
                    txt2: 'Soybean Farmer',
                    txt3: 'Ashta,\nSehore,\nMadhya Pradesh.',
                    c1: const Color.fromARGB(255, 245, 125, 165),
                    c2: Colors.pink,
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

  void handleSearch(String query, BuildContext context) {
    query = query.toLowerCase().trim();

    if (query.contains('groundnut')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => Groundnutlst()),
      );
    } else if (query.contains('paddy')) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Paddylst()));
    } else if (query.contains('wheat')) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Wheatlst()));
    } else if (query.contains('tomato')) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Tomatolst()));
    } else if (query.contains('banana')) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Bananalst()));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("No match found for \"$query\"")));
    }
  }
}
