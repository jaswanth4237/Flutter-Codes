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
          padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12,bottom: 18),
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
                    Color.fromARGB(255, 126, 227, 153),
                  ),
                  Bottom_Container(
                    'assets/market.png',
                    'Market Prices',
                    'Live Updates',
                    const Color.fromARGB(255, 240, 179, 88)
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
                    const Color.fromARGB(255, 111, 151, 219)
                  ),
                  Bottom_Container(
                    'assets/farmer.png',
                    'Farming Tips',
                    'Expert advice',
                     Color.fromARGB(255, 237, 232, 166),
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
                  spacing: 16,
                  children: [
                    Vegies_detailes(
                      'assets/tomatos.jpg',
                      'Fresh Tomatoes',
                      'Active',
                      '500 kg available',
                      '₹20/Kg',
                      Icons.person_outline,
                      '27 interested',
                    ),
                    Vegies_detailes(
                      'assets/wheat.jpg',
                      'Premium Wheat',
                      'Active',
                      '900 kg available',
                      '₹32/Kg',
                      Icons.person_outline,
                      '107 interested',
                    ),
                  ],
                ),
              ),
              //Live Market Prices 
              MarketTicker(),
              //Farming tipes Container
               Farming_Tipes(),
              //Income Boost Container
              Income_Boost(),
              //Recent Transactions Container
              RecentTraction(),
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
        begin: Alignment.topRight,// [#3C8CE7 → #00EAFF]
        end: Alignment.bottomLeft,
        colors:  [Color(0xFF3C8CE7), Color(0xFF00EAFF)],// Deeper Blue,
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
                        style: TextStyle(color: Colors.white70),
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
Widget Bottom_Container(String img, String txt1, String txt2,Color color) {
  return Container(
    width: 170,
    height: 140,
    decoration: BoxDecoration(
      color:color,
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
  String availble,
  String prize,
  IconData person,
  String pIntested,
) {
  return Container(
    width: 320,
    height: 280,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xFFF9F9F9),
      border: Border.all(color: Color(0xFF3CB043), width: 2),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(1, 0),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(img, width: 300, height: 170, fit: BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  vName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 194, 243, 195),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(state, style: TextStyle(color: Colors.green)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(availble, style: TextStyle(color: Colors.black54)),
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                prize,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(person, color: Colors.black54),
                  SizedBox(width: 4),
                  Text(pIntested, style: TextStyle(color: Colors.black54)),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );

}

//Live Market Prices Container


class MarketTicker extends StatefulWidget {
  const MarketTicker({super.key});

  @override
  _MarketTickerState createState() => _MarketTickerState();
}

class _MarketTickerState extends State<MarketTicker> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    )..addListener(() {
        _scrollController.jumpTo(_animationController.value * _scrollController.position.maxScrollExtent);
      });

    _animationController.repeat(); // infinite loop
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 400,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'Live Market Prices',
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                    ),
                    SizedBox(width: 4),
                    Text('Live', style: TextStyle(color: Colors.black54)),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 18),
              ClipRect(
                child: SizedBox(
                  height: 20,
                  child: ListView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      _item('Wheat', '₹26/kg', '-2.1%', Colors.red),
                      SizedBox(width: 16),
                      _item('Rice', '₹35/kg', '+1.8%', Colors.green),
                      SizedBox(width: 16),
                      _item('Corn', '₹30/kg', '+0.6%', Colors.green),
                      SizedBox(width: 16),
                      _item('Barley', '₹22/kg', '-1.2%', Colors.red),
                      SizedBox(width: 16),
                      _item('Soybean', '₹40/kg', '+2.4%', Colors.green),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }

  Widget _item(String name, String price, String change, Color changeColor) {
    return Row(
      children: [
        Text('$name ', style: TextStyle(color: Colors.black)),
        Text(price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(width: 6),
        Container(
          width: 50,
          height: 20,
          decoration: BoxDecoration(
            color: changeColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              change,
              style: TextStyle(color: changeColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
// Farming tipes Container
Widget Farming_Tipes()
{
  return Container(
    width: 400, height: 270,
    decoration: BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        spacing: 8,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Text('Today\'s Framing Tips',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
          Container(
            width: 350,height: 100,
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0,left: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 40,height: 40,
                      decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.eco_outlined,color: Colors.green,size: 30,),
                      ),
                      SizedBox(width: 6,),
                      Text('Optimal Watering Time',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Water your crops early morning(5-7 AM) to '),
                      Padding(
                        padding: const EdgeInsets.only(right: 26.0),
                        child: Text('reduce water loss through evaporation.'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 350,height: 100,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0,left: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 40,height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.bug_report_outlined,color: Colors.blue,size: 30,),
                      ),
                      SizedBox(width: 6,),
                      Text('Pest Control Alert',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Check for aphids on tomato plants.'),
                      Padding(
                        padding: const EdgeInsets.only(left: 27.0),
                        child: Text('Use neem oil spray as natural pesticide.'),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
//Income Boost container
Widget Income_Boost()
{
  return Container(
    width: 400,height: 120,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [const Color.fromARGB(255, 16, 113, 21),const Color.fromARGB(255, 38, 197, 46)]),
      borderRadius: BorderRadius.circular(18)
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 12),
          child: Row(
            children: [
              Text('Income Boost',style: TextStyle(color: Colors.white,fontSize: 20),),
               SizedBox(width: 170,),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text('35%',style: TextStyle(color:Colors.white,fontSize:24,fontWeight: FontWeight.bold),),
          ),
             
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 3.0,left: 12),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Average farmers earn 35% more',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 60,),
                  Text('More Income',style: TextStyle(color: Colors.white),)
                ],
              ),
              Text('Direct selling eliminates middlemen',style: TextStyle(color:Colors.white54),),
            ],
          ),
        )
      ],
    ),
  );
}
//Recent Transactions Container
Widget RecentTraction(){
    return Container(
     width: 400,height: 238,
     decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
     ),
     child: Padding(
       padding: const EdgeInsets.all(12.0),
       child: Column(
        spacing: 12,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Text('Recent Transactions',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          Container(
            width: 350,height: 80,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 245, 204),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Icon(Icons.check,color: Colors.green,size: 30,)),
                      )
                    ],
                  ),
                  SizedBox(width: 4,),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Tomatoes - 200 Kg',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text('Sold to Durga Traders',style: TextStyle(color: Colors.black54),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 28,),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Text('₹9,000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text('UPI Paid',style: TextStyle(color: Colors.black54),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
           Container(
            width: 350,height: 80,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 153, 196, 232),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,height: 50,
                        decoration: BoxDecoration(
                          color:Colors.blue[100],
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Icon(Icons.local_shipping_outlined,color: Colors.blue,size: 30,)),
                      )
                    ],
                  ),
                  SizedBox(width: 4,),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Wheat - 500 Kg',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: Text('In transit to Mumbai',style: TextStyle(color: Colors.black54),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:48,),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Text('₹14,000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text('Pending',style: TextStyle(color: Colors.black54),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
       ),
     ),
    );
}