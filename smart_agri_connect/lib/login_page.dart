import 'package:flutter/material.dart';
import 'package:smart_agri_connect/buyer_otp_page.dart';
import 'package:smart_agri_connect/otp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _numController = TextEditingController();
  bool isFarmer = true;

  @override
  void dispose() {
    _numController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFF8F8F8)),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFF8F8F8),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                   boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      //spreadRadius: 2,
                      blurRadius: 100,
                      blurStyle: BlurStyle.solid,
                      offset: Offset(6, 6,),
                    ),
                  ],
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      SizedBox(height: 16),

                        
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFarmer = true;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isFarmer ? Colors.green : Colors.transparent,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Farmer',
                                      style: TextStyle(
                                        color: isFarmer ? Colors.white : Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Buyer
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFarmer = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: !isFarmer ? Colors.green : Colors.transparent,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Buyer',
                                      style: TextStyle(
                                        color: !isFarmer ? Colors.white : Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                      
                        TextFormField(
                          controller: _numController,
                          keyboardType: TextInputType.phone,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "Please enter your mobile number";
                            } else if (val.length != 10 || !RegExp(r'^[0-9]+$').hasMatch(val)) {
                              return "Please enter a valid 10-digit mobile number";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Mobile Number",
                            hintText: "Enter your mobile number",
                            prefixIcon: const Icon(Icons.phone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Send OTP Button
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              if (isFarmer) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OtpPage()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BuyerOtpPage()),
                                );
                              }
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green,
                            ),
                            child: const Center(
                              child: Text(
                                "Send OTP",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


