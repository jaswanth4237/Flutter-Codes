import 'package:flutter/material.dart';

class My_Home extends StatefulWidget {
  const My_Home({super.key});

  @override
  State<My_Home> createState() => _My_HomeState();
}

class _My_HomeState extends State<My_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('hi'),
      ),
    );
  }
}