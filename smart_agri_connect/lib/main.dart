import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_agri_connect/start_page.dart';
import 'package:flutter/services.dart';

void main()
async{
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
   DeviceOrientation.portraitUp,
  ]);

  if (kIsWeb) {
    runApp(DevicePreview(builder: (context)=>Start()));
  } else {
    runApp(Start());
  }
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