import 'package:flutter/material.dart';

class My_Home extends StatefulWidget {
  // final double wid,height;
  const My_Home({super.key});

  @override
  State<My_Home> createState() => _My_HomeState();
}

class _My_HomeState extends State<My_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 241, 246),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/Logo_br.png', width: 100, height: 100),
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
          Icon(Icons.notifications_outlined),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
          child: Column(
            spacing: 12,
            children: [
              //Temparature Container Calling.
              Center(child: Temparature_Container()),
              //Bottom detailes Container calling
              Row(
                spacing: 24,
                children: [
                  Bottom_Container(
                    'assets/veges.png',
                    'Sell Crops',
                    'Direct to buyers',
                  ),
                  Bottom_Container(
                    'assets/veges.png',
                    'Market Prices',
                    'Live Updates',
                  ),
                ],
              ),
              Row(
                spacing: 24,
                children: [
                  Bottom_Container(
                    'assets/weather.png',
                    'Weather',
                    '7-days forecast',
                  ),
                  Bottom_Container(
                    'assets/veges.png',
                    'Farming Tips',
                    'Expert advice',
                  ),
                ],
              ),
              SizedBox(height: 4),
              //Active listing text in row.
              Row(
                spacing: 140,
                children: [
                  Text(
                    'Your Active Listings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //Viges Detailes.
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Vegies_detailes('assets/tomatos.jpg','Fresh Tomatoes' , 'Active', '500 kg available', '₹20/Kg', Icons.person_outline, '27 interested')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Temparature Container
Widget Temparature_Container() {
  return Container(
    width: 360,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF5EB3F3), // Light Blue
          Color.fromARGB(255, 18, 91, 216), // Deeper Blue
        ],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              spacing: 8,
              children: [
                Icon(Icons.location_on_outlined, color: Colors.white),
                Text(
                  'Rajahumendry, Andhra Pradesh',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 238.0),
            child: Text(
              'Humidity',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            spacing: 180,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  '28°C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('65%', style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
          Row(
            spacing: 20,
            children: [
              Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 32),
              Column(
                children: [
                  Row(
                    spacing: 32,
                    children: [
                      Text(
                        'Sunny, Good for',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        'Last Updated 2 min',
                        style: TextStyle(color: Colors.white38),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: .0),
                    child: Row(
                      spacing: 190,
                      children: [
                        Text(
                          'harvest',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text('ago', style: TextStyle(color: Colors.white38)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

//Bottom bar detailes Container
Widget Bottom_Container(String img, String txt1, String txt2) {
  return Container(
    width: 170,
    height: 140,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        spacing: 2,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(img, width: 70, height: 67),
          SizedBox(height: 0),
          Text(
            txt1,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(txt2, style: TextStyle(color: Colors.black54)),
        ],
      ),
    ),
  );
}

//Vegies detailes Container
Widget Vegies_detailes(
  String img,
  String vName,
  String state,
  String avalible,
  String prize,
  IconData person,
  String pIntested,
) {
  return Container(
    width: 320, height: 280,
     decoration: BoxDecoration(
     color: Colors.white,
    ),
    child: Column(
      children: [
        Image.asset(img,width: 280,height: 100,),
        Row(
          children: [
            
          ],
        )
      ],
    ),
  );
}
