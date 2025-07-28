
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
// import 'package:smart_agri_connect/My_Home.dart';
import 'package:smart_agri_connect/widgets/nav_bar.dart';


void main()
{
  runApp(DevicePreview(builder: (context)=>Start()));
}
class Start extends StatelessWidget {
   const Start({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: My_Home(),
      home: NavBar(),
    );
  }
}