import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -210,
            child: Transform.rotate(
              angle: 1.05,
              child: Container(
                width: 193,
                height: 450,
                color: Color(0xffEF8767),
              ),
            ),
          ),
          Positioned(
            top: -85,
            right: -10,
            child: Transform.rotate(
              angle: 1.05,
              child: Container(
                width: 193,
                height: 184,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Color(0xffF6A38A),
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                height: 241,
                child: Image.asset(
                  'assets/images/saless.png',
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Entrepôt',
                    style: GoogleFonts.montserrat(
                        fontSize: 36, fontWeight: FontWeight.w600)),
              ),
              Container(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  textAlign: TextAlign.center,
                  "Profitez de l'interface\nutilisateur flexible basée\nsur vos ventes",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Color(0xff5C5C5C),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
