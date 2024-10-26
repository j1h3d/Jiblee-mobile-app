import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiblee/screens/login.dart';
import 'package:jiblee/widgets/button.dart';

class Prelogin extends StatelessWidget {
  const Prelogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: 30,
            top: -210,
            child: Transform.rotate(
              angle: 1.18,
              child: Container(
                width: 400,
                height: 550,
                color: Color(0xffEF8767),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 115,
            child: Text(
              'Jiblee',
              style: GoogleFonts.jomhuria(fontSize: 100, color: Colors.white),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 400, bottom: 10),
                child: Text(
                  "Bienvenue Sur l'Application Jiblee",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "L'application qui facilite vos transactions quotidiennes",
                style: GoogleFonts.montserrat(
                    color: Color(0xff5C5C5C),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                padding: EdgeInsets.only(top: 80),
                child: CustomButton(
                  text: "Se connecter",
                  fontSize: 21,
                  color: Color(0xffEF8767),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Color(0xffEF8767),
                          width: 2), // Border color and thickness
                      padding: const EdgeInsets.symmetric(
                          horizontal: 93, vertical: 7),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Rounded corners
                      ),
                      backgroundColor:
                          Colors.transparent, // Transparent background
                    ),
                    child: Text(
                      "S'inscrire",
                      style: TextStyle(
                          fontSize: 21,
                          color:
                              Color(0xffEF8767)), // Text color matching border
                    ),
                  )),
              Expanded(
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
