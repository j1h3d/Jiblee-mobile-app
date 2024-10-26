import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiblee/widgets/textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordTextController =
        TextEditingController();
    final TextEditingController emailTextController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -300,
            left: -110,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF6A38A),
                  borderRadius: BorderRadius.circular(190)),
              height: 380,
              width: 380,
            ),
          ),
          Positioned(
            top: -200,
            left: -280,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffEF8767),
                  borderRadius: BorderRadius.circular(190)),
              height: 380,
              width: 380,
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 40, left: 23),
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 150),
                child: Text(
                  "Se connecter",
                  style: GoogleFonts.montserrat(
                      fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 70, left: 40),
                child: Text(
                  "Bienvenue,",
                  style: GoogleFonts.montserrat(
                      fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  "content de te revoir !!",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5C5C5C)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: buildTextField(
                      "Nom d'utilisateur", false, emailTextController)),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: buildTextField(
                      "Mot de passe", true, passwordTextController)),
              Container(
                padding: EdgeInsets.only(top: 8, right: 30),
                alignment: Alignment.centerRight,
                child: Text(
                  "Mot de passe oublié ?",
                  style: GoogleFonts.montserrat(
                      color: Color.fromARGB(255, 181, 181, 181),
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 257,
                height: 44,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEF8767)),
                    onPressed: () {},
                    child: Text(
                      'Se connecter',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
              ),
              Expanded(child: Container()),
            ],
          )
        ],
      ),
    );
  }
}
