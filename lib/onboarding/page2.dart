import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
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
                height: 190,
              ),
              Container(
                height: 260,
                child: Image.asset(
                  'assets/images/store_owner.png',
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text('Point de vente',
                    style: GoogleFonts.montserrat(
                        fontSize: 36, fontWeight: FontWeight.w600)),
              ),
              Container(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  textAlign: TextAlign.center,
                  'Donnez à vos\nfournisseurs une\napproche plus simple',
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
