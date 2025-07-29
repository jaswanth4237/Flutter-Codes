
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:smart_agri_connect/start_page.dart';


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
      home: SplashPage(),
    );
  }
}