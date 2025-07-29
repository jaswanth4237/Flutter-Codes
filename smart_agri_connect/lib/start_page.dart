import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_agri_connect/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/farm_.jpg',
              fit: BoxFit.cover,
            ),
          ),

         
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BottomCurveClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SMART AGRI\nCONNECT",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 30),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 45),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Login",style: TextStyle(color: Colors.white,fontSize:16 ),),
                    ),
                    const SizedBox(height: 12),

                    OutlinedButton(
                      onPressed: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green,
                        side: const BorderSide(color: Colors.green),
                        minimumSize: const Size(double.infinity, 45),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("Signup",style: TextStyle(color: Colors.white,fontSize:16 ),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start from bottom left
    path.lineTo(0, 0);

    // Curve: peak in center
    path.quadraticBezierTo(size.width / 2, 80, size.width, 0);

    // Bottom and right edges
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}






