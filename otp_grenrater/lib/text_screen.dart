import 'package:flutter/material.dart';
import 'package:otp_grenrater/otp.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TextField1 extends StatefulWidget {
  const TextField1({super.key});

  @override
  State<TextField1> createState() => _TextField1State();
}

class _TextField1State extends State<TextField1> {
  TextEditingController text_cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: text_cont,
            // keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter phone number",
              suffixIcon: Icon(Icons.phone),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Otp()),
              // );
              await FirebaseAuth.instance.verifyPhoneNumber(
                // phoneNumber: text_cont.text.toString(),
                verificationCompleted: (PhoneAuthCredential credential) {},
                verificationFailed: (FirebaseAuthException ex) {},
                codeSent: (String verificationid, int? resendtoken) {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Otp(verifyid: verificationid,)),
              );
                },
                codeAutoRetrievalTimeout: (String verificationid) {},
                phoneNumber: text_cont.text.toString(),
              );
            },
            child: Text('verify'),
          ),
        ],
      ),
    );
  }
}
