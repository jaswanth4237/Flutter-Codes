import 'package:flutter/material.dart';
import 'package:smart_agri_connect/market.dart';
import 'package:smart_agri_connect/my_crops.dart';
import 'package:smart_agri_connect/widgets/Groceries_lst.dart';
import 'package:smart_agri_connect/widgets/insight_card.dart';
import 'package:smart_agri_connect/widgets/settings_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 12,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent.shade200,
                        radius: 25,
                        child: Icon(
                          Icons.person_2_outlined,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ramana",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Connecting Farmers Directly",
                            style: TextStyle(fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.lightBlue.shade100,
                        radius: 13,
                        child: Icon(
                          Icons.edit,
                          color: Colors.blue.shade300,
                          size: 15,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.orange.shade100,
                        radius: 14,
                        child: Icon(
                          Icons.notifications_none_rounded,
                          color: Colors.orange,
                          size: 18,
                        ),
                      ),
                      CircleAvatar(radius: 4, backgroundColor: Colors.orange),
                    ],
                  ),
                  Row(
                    spacing: 6,
                    children: [
                      CircleAvatar(radius: 5, backgroundColor: Colors.green),
                      Text("Live Updates"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    spacing: 16,
                    children: [
                      Container(
                        width: 150,
                        height: 130,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 243, 177),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 18,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text("Trading Volume"),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              "₹2.8L",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "+12% from\nyesterday",
                              style: TextStyle(
                                color: Color.fromARGB(255, 11, 132, 15),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 130,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 176, 210, 237),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Row(
                              children: [
                                Icon(Icons.sync, color: Colors.blue, size: 18),
                                SizedBox(width: 32),
                                Center(child: Text("Active\nTrades")),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              "156",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text("Last 24 Hours"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  
                  Container(
                    height: 312,
                    width: 345,
                     padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                    child: Column(
                      spacing: 10,
                      children: [
                        Text("Market Prices",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        GroceriesLst(
                          img: AssetImage("assets/tomato.jpeg"),
                          txt1: 'Tomatoes',
                          txt2: 'High Demand',
                          txt3: '₹42/kg',
                          txt4: '↑ 5.2%',
                          c: Colors.green, c1: Color.fromARGB(255, 245, 204, 204),
                        ),
                      
                      GroceriesLst(
                    img: AssetImage("assets/wheat.jpg"),
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
                                      ],
                                      ),
                  ),
                  SizedBox(height: 28),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Market Insights",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                      
                        InsightCard(
                          color: const Color.fromARGB(255, 175, 243, 177),
                          icon: Icons.check_circle_outline,
                          iconColor: Colors.green,
                          title: "Best Selling Season",
                          description:
                              "Wheat prices expected to rise in next 2 weeks",
                        ),
                        const SizedBox(height: 12),
                      
                        InsightCard(
                          color: const Color.fromARGB(255, 176, 210, 237),
                          icon: Icons.notifications_none,
                          iconColor: Colors.blue,
                          title: "Market Alert",
                          description:
                              "High demand for organic vegetables in Mumbai",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton.icon(
      onPressed: () {
           Navigator.push(
          context,
           MaterialPageRoute(
              builder: (context) =>MarketPage()
           ),
       );
      },
      icon: const Icon(Icons.storefront),
      label: const Text("Market"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        minimumSize: const Size(150, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    const SizedBox(width: 16),
    ElevatedButton.icon(
      onPressed: () {
       Navigator.push(
          context,
           MaterialPageRoute(
              builder: (context) =>MyCrops(),
           ),
       );
      },
      icon: const Icon(Icons.local_florist_rounded),
      label: const Text("My Crops"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        minimumSize: const Size(150, 60), 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  ],
),

                  SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      spacing: 12,
                      children: const [
                        SettingsTile(
                          icon: Icons.settings,
                          title: "Account Settings",
                        ),
                        SettingsTile(
                          icon: Icons.headset_mic,
                          title: "Help & Support",
                        ),
                        SettingsTile(
                          icon: Icons.payment_rounded,
                          title: "Payment History",
                        ),
                        SettingsTile(
                          icon: Icons.logout,
                          title: "Logout",
                          isLogout: true,
                        ),
                      ],
                    ),
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
