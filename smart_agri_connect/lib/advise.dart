import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/Container_lst.dart';
import 'package:smart_agri_connect/widgets/Container_rect.dart';
import 'package:smart_agri_connect/widgets/container_sqr.dart';

class AdvisePage extends StatefulWidget {
  const AdvisePage({super.key});

  @override
  State<AdvisePage> createState() => _AdvisePageState();
}

class _AdvisePageState extends State<AdvisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/Logo_br.png',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Text(
                        "Smart Advisory",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 50),
                      Container(
                        width: 10,
                        height: 10,
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
                    spacing: 12,
                    children: [
                      ContainerSqr(
                        icn: Icons.wb_sunny_outlined,
                        c1: Color(0xFF3071ef),
                        c2: Colors.white,
                        t1: "Weather\n   Alert",
                        t2:
                            "Light rain expected in next 48 hours. Plan harvesting accordingly.",
                      ),
                      ContainerSqr(
                        icn: Icons.eco,
                        c1: Color(0xFF1cb855),
                        c2: Colors.white,
                        t1: "   Crop\n  Health",
                        t2:
                            "Ideal conditions for wheat growth. Monitor moisture levels.",
                      ),
                    ],
                  ),
                  ContainerRect(
                    C: Color.fromARGB(255, 250, 219, 188),
                    c1: Color(0xFFffecd0),
                    c2: Color(0xFFb8734c),
                    icn: Icons.calendar_month,
                    t1: 'Seasonal Advisory',
                    t2:
                        'Best time to sow wheat crops.\nPrepare your fields within next 2\nweeks.',
                    wdgt: Row(
                      spacing: 8,
                      children: [
                        Container(
                          width: 80,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFFffebd6),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              "High Priority",
                              style: TextStyle(
                                color: Color(0xFFc06342),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Valid till Aug 15",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ContainerRect(
                    C: Color.fromARGB(255, 188, 215, 251),
                    c1: Color(0xFFdaeaf7),
                    c2: Color(0xFF5870b0),
                    icn: Icons.water_drop_outlined,
                    t1: 'Irrigation Schedule',
                    t2:
                        'Maintain moist soil for healthy \nwheat growth.\nNext irrigation due in 6 days.',
                    wdgt: Row(
                      spacing: 8,
                      children: [
                        SizedBox(
                          width: 180,
                          child: LinearProgressIndicator(
                            value: 0.65,
                            minHeight: 8,
                            borderRadius: BorderRadius.circular(20),
                            backgroundColor: Colors.grey.shade300,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.blue,
                            ),
                          ),
                        ),
                        const Text(
                          "65%",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  ContainerRect(
                    C: Color.fromARGB(255, 248, 203, 203),
                    c1: Color(0xFFfce2e3),
                    c2: Color(0xFFa84035),
                    icn: Icons.bug_report_outlined,
                    t1: 'Pest Alert',
                    t2:
                        'High risk of aphid infestation in\ntomato crops. Apply recommended\npesticides.',
                    wdgt: Text(
                      'View Prevention Tips →',
                      style: TextStyle(
                        color: Color(0xFFa84035),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ContainerRect(
                    C: Color.fromARGB(255, 228, 199, 248),
                    c1: Color(0xFFf3e6ff),
                    c2: Color(0xFF874bbc),
                    icn: Icons.videocam_outlined,
                    t1: 'Expert Connect',
                    t2:
                        'Live session with Dr. Sharma on\n"Modern Farming Techniques"\ntoday at 4 PM',
                    wdgt: Text(
                      'Join Seesion →',
                      style: TextStyle(
                        color: Color(0xFF874bbc),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Recommended Actions",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      ContainerLst(
                        icn: Icons.camera_alt_outlined,
                        C: Color.fromARGB(255, 209, 249, 209),
                        c: Colors.green,
                        txt: "Scan Crop",
                      ),
                      ContainerLst(
                        icn: Icons.headset_mic_outlined,
                        C: Color.fromARGB(255, 209, 249, 209),
                        c: Colors.green,
                        txt: "Get Support",
                      ),
                    ],
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
