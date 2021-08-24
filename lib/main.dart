import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relax/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relax',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Color(0xFF001E3D),
            title: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: Color(0xFF001E3D),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              child: Text(
                'Relax',
                style: GoogleFonts.montserrat(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF55b9f3),
                ),
              ),
            ),
          ),
          body: Index(),
        ),
      ),
    );
  }
}
// Color(0xFF001E3D)