import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/pages/homePage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF8FF),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 80,
                    left: 30,
                  ),
                  child: Image.asset(
                    'assets/images/wolo.png',
                    width: 350,
                    height: 450,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 450,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Let us take care of your job",
                          style: GoogleFonts.poppins(
                            color: Color(0xff3B4161),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 42.5),
                          child: Text(
                            "Get tired of unfinished business? work?\nDon't worry! We will take your burden away with pleasure! Let us finish your job quickly",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: Color(
                                0xff878F95,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  bottom: 15,
                                ),
                                child: InkWell(
                                  child: Image.asset(
                                    'assets/images/Next.png',
                                    width: 40,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return SplashScreen2();
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                        color: Color(0xffFFFFFF)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF8FF),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 50,
                    left: 28,
                  ),
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/images/Back.png',
                      width: 28,
                      height: 24,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 90,
                    left: 55,
                  ),
                  child: Image.asset(
                    'assets/images/ilustrasi.png',
                    width: 300,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 70,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - (225 * 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xffFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Start your journey now!",
                      style: GoogleFonts.poppins(
                        color: Color(0xff3B4161),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.5),
                      child: Text(
                        "Stay productive at home.\nMake creations and finish your job\nwith the professionals freelancer!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color(
                            0xff878F95,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Container(
                        child: InkWell(
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                40,
                              ),
                              color: Color(0xff6686D8),
                            ),
                            child: Center(
                              child: Text(
                                "Get Started Now!",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return HomePage();
                              }),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
