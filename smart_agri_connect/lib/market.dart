import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/Groceries_lst.dart';
import 'package:smart_agri_connect/widgets/Market_insts.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
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
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Text(
                        "Market Overview",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 50),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        "Live Updates",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 16,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          // color: Color(0xFFf9fafc),
                          color: Color.fromARGB(255, 203, 216, 252),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 12,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  Icon(Icons.show_chart, color: Colors.green),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Trading",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Volume",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "₹2.8L",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                              ),
                              Text(
                                "+12% from yesterday",
                                style: TextStyle(
                                  // color: Color(0xFF558666),
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          // color: Color(0xFFf9fafc),
                          color: Color.fromARGB(255, 198, 242, 244),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 8,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  Icon(
                                    Icons.import_export,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Active Trades",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                "156",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Last 24 hours"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  GroceriesLst(
                    img: AssetImage("assets/tomato.jpeg"),
                    txt1: 'Tomatoes',
                    txt2: 'High Demand',
                    txt3: '₹21/kg',
                    txt4: '↑ 5.2%',
                    c: Colors.green, c1: Color.fromARGB(255, 245, 204, 204),
                  ),
                  GroceriesLst(
                    img: AssetImage("assets/wheat.jpeg"),
                    txt1: 'Wheat',
                    txt2: 'Stable Market',
                    txt3: '₹26/kg',
                    txt4: '↓ 2.1%',
                    c: Colors.orange, c1: Color.fromARGB(255, 244, 224, 185),
                  ),
                  GroceriesLst(
                    img: AssetImage("assets/paddy_sell.png"),
                    txt1: 'Paddy',
                    txt2: 'Moderate demand',
                    txt3: '₹35/kg',
                    txt4: '↑ 1.8%',
                    c: Colors.green, c1: Color.fromARGB(255, 248, 243, 198),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Market Insights",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  MarketInsts(
                    c1: Color.fromARGB(255, 126, 179, 248),
                    c2: Color(0xFFdeeaff),
                    c3: Color(0xFF436b8e),
                    icn: Icons.info_outline_rounded,
                    t1: "Price Trend Alert",
                    t2:
                        "Tomato prices expected to rise further\ndue to increased urban demand",
                  ),
                  MarketInsts(
                    c1: Color.fromARGB(255, 173, 250, 196),
                    c2: Color(0xFFdeeaff),
                    c3: Color(0xFF57987a),
                    icn: Icons.timer_outlined,
                    t1: "Best Selling Time",
                    t2: "Optimal selling window for wheat in the\nnext 2 weeks",
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
