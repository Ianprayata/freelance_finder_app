import 'package:flutter/material.dart';
import 'package:freelance/models/freelance.dart';
import 'package:freelance/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/pages/detail_pages.dart';
import 'package:freelance/pages/hire.dart';

class Freelancer extends StatelessWidget {
  final Freelance freelance;
  Freelancer({this.freelance});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: Color(0xffECC2B9),
          ),
          child: Image.asset(
            freelance.urlImage,
            width: 90,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              freelance.name,
              style: GoogleFonts.lato(
                fontSize: 20,
                color: blackColor.withOpacity(0.9),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              freelance.title,
              style: GoogleFonts.lato(
                fontSize: 18,
                color: blackColor.withOpacity(0.6),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/star.png',
                  width: 20,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(width: 4),
                Text(
                  freelance.rating,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Image.asset(
                  'assets/images/map.png',
                  width: 20,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  freelance.location,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: blackColor.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
                Text.rich(
                  TextSpan(
                    text: "\$${freelance.cost}",
                    children: [
                      TextSpan(
                        text: "/hr",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: blackColor.withOpacity(
                            0.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Hire();
                    }));
                  },
                  child: Text(
                    "HIRE ME",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    primary: homeColor,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return DetailPage(
                          freelance: freelance,
                        );
                      }),
                    );
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      color: homeColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: homeColor,
                          width: 2.5,
                        ),
                      ),
                      primary: whiteColor,
                      onPrimary: homeColor),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
