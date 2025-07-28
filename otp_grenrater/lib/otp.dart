import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:otp_grenrater/home.dart';


class Otp extends StatefulWidget {
  String verifyid;
  Otp({super.key, required this.verifyid});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController otp_ctr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: otp_ctr,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: "Enter otp",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              try {
                PhoneAuthCredential credential =
                    PhoneAuthProvider.credential(
                      verificationId: widget.verifyid,
                      smsCode: otp_ctr.text.toString(),
                    );
                    FirebaseAuth.instance.signInWithCredential(credential).then((value){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
                    });
              } catch (ex) {
                log(ex.toString());
              }
            },
            child: Text('Otp'),
          ),
        ],
      ),
    );
  }
}
