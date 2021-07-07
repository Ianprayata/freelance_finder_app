import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/pages/T&D.dart';

class PackCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget cards;
  PackCard({this.title, this.description, this.cards});
  Widget superb(description, desc, dec, descript,
      {descr = "", des, cripton, cription = ""}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(description),
        Card(desc),
        Card(dec),
        Card(descript),
        descr != "" ? Card(descr) : Container(),
        cription != "" ? Card(cription) : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 12,
      ),
      margin: EdgeInsets.only(
        left: 32,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(
          color: Color(0xffAF4A53),
          width: 2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.title,
              style: GoogleFonts.lato(
                fontSize: 30,
              ),
            ),
            Text(
              this.description,
              style: GoogleFonts.lato(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            this.cards,
            Padding(
              padding: EdgeInsets.only(
                left: 35,
              ),
              child: ElevatedButton(
                child: Text(
                  "Pick Me",
                  style: GoogleFonts.lato(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffAF4A53),
                  onPrimary: Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Terms();
                    }),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2),
              child: ElevatedButton(
                child: Text(
                  "Ask a Question",
                  style: GoogleFonts.lato(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffECC2B9),
                  onPrimary: Color(0xffAF4A53),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final bool checked = true;
  final String description;
  Card(this.description);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: Transform.scale(
              scale: 1.3,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
                child: SizedBox(
                  width: Checkbox.width,
                  height: Checkbox.width,
                  child: Checkbox(
                    value: checked,
                    onChanged: (value) {
                      value = true;
                    },
                    checkColor: Colors.white,
                    activeColor: Color(0xffAF4A53),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              this.description,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Color(0xff1E2237),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
