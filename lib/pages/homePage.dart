import 'package:flutter/material.dart';
import 'package:freelance/models/freelance.dart';
import 'package:freelance/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/widgets/card.dart';
import 'package:freelance/models/job.dart';
import 'package:freelance/widgets/freelancers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffAF4A53),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 20,
              top: 31,
              child: Image.asset(
                'assets/images/filter.png',
                width: 47,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 31,
                left: 20,
                right: 85,
              ),
              padding: EdgeInsets.only(
                left: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: pinkColor.withOpacity(0.2),
              ),
              child: TextField(
                onChanged: (value) {},
                style: TextStyle(
                  color: pinkColor,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Freelancers, Project",
                  hintStyle: TextStyle(color: pinkColor),
                  icon: Image.asset(
                    'assets/images/icon_search.png',
                    width: 18,
                    matchTextDirection: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 130,
                left: 20,
              ),
              child: Text(
                "Cari\nFreelancer",
                style: GoogleFonts.lato(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: whiteColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 21,
                top: 225,
              ),
              child: Text(
                "Selesaikan pekerjaan\ndengan talenta\nterbaik di bidangnya",
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: whiteColor.withOpacity(0.6),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 35,
              child: Image.asset(
                'assets/images/illustration.png',
                width: 250,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 400,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
                color: whiteColor,
              ),
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                        top: 30,
                      ),
                      child: Container(
                        child: Text(
                          "Paling Banyak Dicari",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: blackColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 22,
                          ),
                          PopularJob(
                            Job(
                              url: "assets/images/programmer.png",
                              title: "Programmer",
                              id: 1,
                              totalJob: "256 Job",
                            ),
                          ),
                          PopularJob(
                            Job(
                              url: 'assets/images/designer.png',
                              title: "Designer",
                              id: 2,
                              totalJob: "120 Designer",
                            ),
                          ),
                          PopularJob(
                            Job(
                                url: 'assets/images/sosmed.png',
                                title: "Sosmed Admin",
                                id: 3,
                                totalJob: "67 Admin"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        "Top Rated Freelancer",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Column(
                        children: [
                          Freelancer(
                            freelance: Freelance(cost: "55",
                              id: 1,
                              location: "Bandung",
                              name: "James Arnold",
                              urlImage: "assets/images/pipel.png",
                              rating: "4.9",
                              title: "Programmer / Developer",),
                              
                            
                          ),
                          Freelancer(
                           
                              freelance: Freelance(
                                cost: "55",
                              id: 1,
                              location: "Bandung",
                              name: "Carol Elanoir",
                              urlImage: "assets/images/pipel3.png",
                              rating: "4.8",
                              title: "UI / UX Designer",
                              ),
                            
                          ),
                          Freelancer(
                         
                              freelance: Freelance(
                                cost: "55",
                              id: 1,
                              location: "Bandung",
                              name: "Steven Rodd",
                              urlImage: "assets/images/pipel2.png",
                              rating: "4.5",
                              title: "Content Creator",
                              ),
                       
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
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
