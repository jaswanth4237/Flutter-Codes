import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/insight_card.dart';
import 'package:smart_agri_connect/widgets/row_build.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 10,
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
                  const SizedBox(width: 6),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monika Sai",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Connecting Farmers Directly",
                        style: TextStyle(fontSize: 12),
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
                  const SizedBox(width: 2),
                  CircleAvatar(
                    backgroundColor: Colors.orange.shade100,
                    radius: 14,
                    child: Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.orange,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 2),
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
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
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
                              SizedBox(width: 6),
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
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
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
                              Text("Active\nTrades"),
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
                  ),
                ],
              ),
              SizedBox(height: 32),
              Container(
                width: 330,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Market Prices",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const RowBuild(
                      iconPath: "assets/wheat.jpg",
                      title: "Wheat",
                      subtitle: "Stable market",
                      price: "₹40/kg",
                      percent: "13.1%",
                    ),
                    SizedBox(height: 12),

                    const RowBuild(
                      iconPath: "assets/Rice.png",
                      title: "Rice",
                      subtitle: "Moderate demand",
                      price: "₹50/kg",
                      percent: "14.8%",
                    ),
                    SizedBox(height: 12),

                    const RowBuild(
                      iconPath: "assets/tomatos.jpg",
                      title: "Tomatoes",
                      subtitle: "High demand",
                      price: "₹55/kg",
                      percent: "17.2%",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
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
                    // Header row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Market Insights",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    InsightCard(
                      icon: Icons.check_circle_outline,
                      iconColor: Colors.green,
                      title: "Best Selling Season",
                      description:
                          "Wheat prices expected to rise in next 2 weeks",
                    ),
                    const SizedBox(height: 12),

                    InsightCard(
                      icon: Icons.notifications_none,
                      iconColor: Colors.blue,
                      title: "Market Alert",
                      description:
                          "High demand for organic vegetables in Mumbai",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.storefront),
                    label: const Text("Market"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.local_florist_rounded),
                    label: const Text("My Crops"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
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
                  children: const [
                    SettingsTile(
                      icon: Icons.settings,
                      title: "Account Settings",
                    ),
                    SizedBox(height: 12),
                    SettingsTile(
                      icon: Icons.headset_mic,
                      title: "Help & Support",
                    ),
                    SizedBox(height: 12),
                    SettingsTile(icon: Icons.payment, title: "Payment History"),
                    SizedBox(height: 12),
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
    );
  }
}
