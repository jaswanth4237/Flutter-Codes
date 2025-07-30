import 'package:flutter/material.dart';
import 'package:smart_agri_connect/widgets/nav_bar.dart';
class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _otpctr=TextEditingController();
      final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFF8F8F8)),
      body: Stack(
        children: [
          Container(
            //color: Colors.green,
            color: Color(0xFFF8F8F8)

          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                    key: _key,
              child: Container(
               height: 250,
                width: 350,
                
                decoration: BoxDecoration(

                 // color: Colors.white,
                  color: Color(0xFFFFFFFF),

                  
                  borderRadius: BorderRadius.circular(16),
                  
                 // border: Border.all(color: Colors.green,width: 3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      //spreadRadius: 2,
                      blurRadius: 100,
                      blurStyle: BlurStyle.solid,
                      offset: Offset(6, 6),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    
                    children: [
                      SizedBox(height: 10,),
                      Text("Login",style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      TextFormField(
                         controller: _otpctr,
                         validator: (val)
                         {
                          if(val!.isEmpty)
                          {
                            return "please enter the 4 digit OTP";
                          }
                          else 
                          {
                            return null;
                          }
                         },
                        decoration: InputDecoration(
                          labelText: "OTP",
                          //labelStyle: TextStyle(color: Colors.white),
                          hintText: "enter the OTP",
                          
                          //prefixIcon: Icon(Icons.phone),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                             borderRadius: BorderRadius.circular(8),
                          ),
                        
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2), 
                          borderRadius: BorderRadius.circular(8),
                           ),
                          
                  
                        ),
                      ),
                      SizedBox(height: 32,),
                      GestureDetector(
                        onTap: () {
                        
                           if (_key.currentState!.validate()) {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>NavBar()));
                           
                          debugPrint("Submit button clicked");
                           }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                          ),
                          child: Center(child: Text("Submit",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      // ElevatedButton(onPressed: (){},
                      //  style: ElevatedButton.styleFrom(
                      //  backgroundColor: Colors.white, 
        
                      // foregroundColor: Colors.green, 
                      // fixedSize: Size(40, 20),
      
                      //  elevation: 2, 
                      //  shape: RoundedRectangleBorder(
        
                      //   borderRadius: BorderRadius.circular(4), 
                      //  side: BorderSide(color: Colors.green, width: 1.2), 
                      // ),
                      //  ),
                      //  child: Text("Send OTP"))
                  
                    ],
                  ),
                ),
              ),
            ),
          )
          )
        ],
      ),
    );

  }
}