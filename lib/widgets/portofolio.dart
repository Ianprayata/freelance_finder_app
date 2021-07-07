import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/theme.dart';

class Porto extends StatelessWidget {
  final String urlImage;
  final String title;
  final String rating;
  final String watched;
  Porto({
    this.urlImage,
    this.title,
    this.watched,
    this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(
          bottom: 40,
        ),
        height: 320,
        width: 332,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                35,
              ),
              child: Image.asset(
                this.urlImage,
                width: 332,
                height: 238,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                this.title,
                style: GoogleFonts.lato(
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 6,
                  ),
                  Icon(
                    CupertinoIcons.person_2_alt,
                    size: 20,
                    color: blackColor.withOpacity(
                      0.8,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    this.watched,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/star.png',
                    width: 22,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      this.rating,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
