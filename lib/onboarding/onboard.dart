import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiblee/screens.dart';
import 'package:jiblee/screens/prelogin.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:jiblee/widgets/button.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: const [Page1(), Page2(), Page3()],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            color: Colors.white,
            child: Center(
              child: CustomButton(
                fontSize: 21,
                text: _currentPage < 2 ? 'Suivant' : 'Terminer',
                onPressed: () {
                  if (_currentPage < 2) {
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Prelogin()),
                    );
                  }
                },
              ),
            ),
          ),
          _currentPage < 2
              ? GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Prelogin()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Passer',
                        style: GoogleFonts.montserrat(
                            color: Color(0xffEF8767),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              : Container(
                  padding: EdgeInsets.only(bottom: 44),
                  color: Colors.white,
                ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(bottom: 46),
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: 40,
                    height: 10,
                    color: Color(0xffEF8767), // Filled active dot
                    borderRadius: BorderRadius.circular(4.0), // Fully round
                  ),
                  dotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: Colors.transparent, // Empty dots
                    borderRadius: BorderRadius.circular(5.0),
                    dotBorder: DotBorder(
                        color: Color(0xffF6A38A),
                        width: 1.5), // Thickness of the border
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
