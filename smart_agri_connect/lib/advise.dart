import 'package:flutter/material.dart';

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
                      conS(
                        Color(0xFF3071ef),
                        Icons.wb_sunny_outlined,
                        Colors.white,
                        "Weather\n    Alert",
                        "Light rain expected in next 48 hours. Plan harvesting accordingly.",
                      ),
                      conS(
                        Color(0xFF1cb855),
                        Icons.eco,
                        Colors.white,
                        "Crop\n   Health",
                        "Ideal conditions for wheat growth. Monitor moisture levels.",
                      ),
                    ],
                  ),
                  conR(
                    Color(0xFFfff6ed),
                    Color(0xFFffecd0),
                    Color(0xFFb8734c),
                    Icons.calendar_month,
                    'Seasonal Advisory',
                    'Best time to sow wheat crops.\nPrepare your fields within next 2\nweeks.',
                    Row(
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
                  conR(
                    Color(0xFFeff6ff),
                    Color(0xFFdaeaf7),
                    Color(0xFF5870b0),
                    Icons.water_drop_outlined,
                    'Irrigation Schedule',
                    'Maintain 2-3 cm water level for\nbetter crop growth. Next irrigation\ndue in 3 days.',
                    Row(
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
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  conR(
                    Color(0xFFfef2f2),
                    Color(0xFFfce2e3),
                    Color(0xFFa84035),
                    Icons.bug_report_outlined,
                    'Pest Alert',
                    'High risk of aphid infestation in\ntomato crops. Apply recommended\npesticides.',
                    Text(
                      'View Prevention Tips →',
                      style: TextStyle(
                        color: Color(0xFFa84035),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  conR(
                    Color(0xFFfbf5ff),
                    Color(0xFFf3e6ff),
                    Color(0xFF874bbc),
                    Icons.videocam_outlined,
                    'Expert Connect',
                    'Live session with Dr. Sharma on\n"Modern Farming Techniques"\ntoday at 4 PM',
                    Text(
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
                      conL(
                        Icons.camera_alt_outlined,
                        Color(0xFFe5f8e5),
                        Colors.green,
                        "Scan Crop",
                      ),
                      conL(
                        Icons.headset_mic_outlined,
                        Color(0xFFe5f8e5),
                        Colors.green,
                        "Get Support",
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

  Widget conS(Color c1, IconData icn, Color c2, String t1, String t2) {
    return Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
        color: c1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 12,
          children: [
            Row(
              spacing: 16,
              children: [
                Icon(icn, color: c2),
                Text(
                  t1,
                  style: TextStyle(color: c2, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(t2, style: TextStyle(color: c2)),
          ],
        ),
      ),
    );
  }

  Widget conR(
    Color C,
    Color c1,
    Color c2,
    IconData icn,
    String t1,
    String t2,
    Widget w,
  ) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: C,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(color: c1, shape: BoxShape.circle),
              child: Icon(icn, size: 28, color: c2),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  t1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(t2, style: TextStyle(color: Colors.black, fontSize: 14)),
                w,
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget conL(IconData icn, Color C, Color c, String txt) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: C,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icn, color: c),
            Text(txt, style: TextStyle(color: c)),
          ],
        ),
      ),
    );
  }
}
