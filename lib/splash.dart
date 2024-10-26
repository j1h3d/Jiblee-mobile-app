import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiblee/onboarding/onboard.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Onboard()));
    });
    return Scaffold(
      backgroundColor: Color(0xffEF8767),
      body: Center(
        child: Text(
          'Jiblee',
          style: GoogleFonts.jomhuria(fontSize: 100, color: Colors.white),
        ),
      ),
    );
  }
}
