import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:otp_grenrater/text_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(my_app());
}

class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextField1(),
    );
  }
}