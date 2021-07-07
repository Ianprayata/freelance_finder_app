import 'package:flutter/material.dart';
import 'package:freelance/models/freelance.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/theme.dart';
import 'package:freelance/widgets/portofolio.dart';
import 'package:freelance/widgets/review.dart';
import 'package:freelance/pages/hire.dart';
import 'package:freelance/pages/homePage.dart';
import 'package:freelance/pages/client.dart';

class DetailPage extends StatefulWidget {
  final Freelance freelance;
  DetailPage({this.freelance});
  @override
  DetailPageState createState() => DetailPageState(freelance: freelance);
}

class DetailPageState extends State<DetailPage> {
  final Freelance freelance;
  DetailPageState({this.freelance});
  bool v;
  bool isClicked = true;
  bool isClicked1 = false;
  bool isClicked2 = false;
  bool isClicked3 = false;
  Widget button() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 30,
          ),
          child: ElevatedButton(
            child: Text(
              "Portofolio",
            ),
            onPressed: () {
              setState(() {
                isClicked1 = false;
                isClicked2 = false;
                isClicked = true;
              });
            },
            style: ElevatedButton.styleFrom(
              primary:
                  (this.isClicked == true) ? Color(0xffECC2B9) : whiteColor,
              onPrimary: Color(0xffAF4A53),
              textStyle: GoogleFonts.lato(
                fontSize: 18,
                color: Color(0xffECC2B9),
              ),
              elevation: 0,
              padding: EdgeInsets.fromLTRB(
                16,
                6,
                16,
                8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                side: BorderSide(width: 2, color: Color(0xffECC2B9)),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
          ),
          child: ElevatedButton(
            child: Text(
              "Clients",
            ),
            onPressed: () {
              setState(() {
                this.isClicked1 = true;
                this.isClicked = false;

                this.isClicked2 = false;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: isClicked1 ? Color(0xffECC2B9) : whiteColor,
              onPrimary: Color(0xffAF4A53),
              textStyle: GoogleFonts.lato(
                fontSize: 18,
                color: Color(0xffECC2B9),
              ),
              elevation: 0,
              padding: EdgeInsets.fromLTRB(
                16,
                6,
                16,
                8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                side: BorderSide(width: 2, color: Color(0xffECC2B9)),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 32,
          ),
          child: ElevatedButton(
            child: Text(
              "Reviews",
            ),
            onPressed: () {
              setState(() {
                this.isClicked1 = false;
                this.isClicked2 = true;
                v = isClicked2;
                this.isClicked = false;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: isClicked2 ? Color(0xffECC2B9) : whiteColor,
              onPrimary: Color(0xffAF4A53),
              textStyle: GoogleFonts.lato(
                fontSize: 18,
                color: Color(0xffECC2B9),
              ),
              elevation: 0,
              padding: EdgeInsets.fromLTRB(
                16,
                6,
                16,
                8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                side: BorderSide(width: 2, color: Color(0xffECC2B9)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonTapped() {
    return isClicked1
        ? Clients()
        : Column(
            children: [
              Porto(
                urlImage: "assets/images/desain1.png",
                rating: "4.7",
                title: "FoodMarket UI Design",
                watched: "12.1k",
              ),
              Porto(
                  urlImage: "assets/images/illust.png",
                  rating: "4.8",
                  title: "Presentation Illustration",
                  watched: "10.5k"),
              Porto(
                  urlImage: "assets/images/webdesign.png",
                  rating: "3.9",
                  title: "Front end Website",
                  watched: "7.2k"),
              Porto(
                  urlImage: "assets/images/FEND.png",
                  rating: "3.9",
                  title: "Travel Website Design",
                  watched: "7.2k"),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECC2B9),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 310,
                top: 180,
              ),
              child: Image.asset(
                'assets/images/donut1.png',
                width: 119,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 40,
                color: Color(0xffAF4A53),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return HomePage();
                    }),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 96),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 130,
                    child: Image.asset(
                      freelance.urlImage,
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF2F4F2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        freelance.name,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Color(
                            0xffAF4A53,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        freelance.title,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Color(0xffAF4A53),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/map.png',
                            width: 26,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            freelance.location,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Color(0xff000000).withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                top: 8, bottom: 8, left: 19, right: 19),
                            primary: Color(0xffAF4A53),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Hire();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "HIRE ME",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: whiteColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 295,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    35,
                  ),
                  topLeft: Radius.circular(
                    35,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Overview",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        "From humble startups to software used by billions,\nI've had a blast designing things that peoples love. At\nGoogle, Im proudly designing the future of Chrome\nalongside some of the industry's greatest innovators.",
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        "Skills",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: blackColor.withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(height: 11),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Text(
                        "UX Design, UI Design, Front End Development,\nIoT Design, Mobile Development",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: blackColor.withOpacity(
                            0.8,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width,
                      child: button(),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 32,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: isClicked2
                            ? Column(
                                children: [
                                  Review(),
                                  Review(
                                    jobdesc: "Designer at Samsan Tech",
                                    imageUrl: 'assets/images/pipel5.png',
                                    name: "Aurora R.",
                                    reviews:
                                        "Baru pertama nyoba desain, wah sekali, cocok untuk semuanya yang mau desain cepat dan tepat. inilah tempatnya!!",
                                  ),
                                  Review(
                                    jobdesc: "Developer at Alibaba",
                                    imageUrl: 'assets/images/pipel6.png',
                                    name: "Celine Zin",
                                    reviews: "Recommended sekali",
                                  ),
                                  Review(
                                    jobdesc: "Student",
                                    imageUrl: 'assets/images/pipel3.png',
                                    name: "Alexa Mawar",
                                    reviews: "bintang lima",
                                  )
                                ],
                              )
                            : buttonTapped(),
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
