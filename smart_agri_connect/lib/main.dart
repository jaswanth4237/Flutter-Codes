import 'package:flutter/material.dart';
import 'package:smart_agri_connect/My_Home.dart';

void main()
{
  runApp(Start());
}
class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: My_Home(),
    );
  }
}