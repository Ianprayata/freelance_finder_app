import 'package:flutter/material.dart';
import 'package:freelance/widgets/packCard.dart';
import 'package:google_fonts/google_fonts.dart';

class Hire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECC2B9),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 24,
              top: 32,
            ),
            alignment: Alignment.centerLeft,
            height: 25,
            width: 30,
            child: InkWell(
              child: Image.asset(
                'assets/images/Back.png',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 30,
            ),
            child: Text(
              "Choose your Subscription",
              style: GoogleFonts.lato(
                fontSize: 28,
                color: Color(0xffAF4A53),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26,
            ),
            child: Text(
              "Choose one of the Subscription below to Continue.",
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Color(0xff1E2237).withOpacity(0.5),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            height: 530,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PackCard(
                  title: "Overmoon",
                  description: "IDR 5.000.000",
                  cards: PackCard().superb(
                    "6 jam / hari",
                    "Konten\n(Asset Design,\nKoding, & Komponen).",
                    "Masa langganan 1 bulan",
                    "1 Projek aplikasi",
                    descr: "Integrasi google ads",
                  ),
                ),
                PackCard(
                  title: "The White Alpha",
                  description: "IDR 20.000.000",
                  cards: PackCard().superb(
                      "12 jam / hari",
                      "Konten\n(Asset Design,\nKoding, & Komponen).",
                      "Masa langganan 1 bulan",
                      "3 Projek aplikasi / website",
                      descr: "Revisi design sepuasnya",
                      cription: "Integrasi Google Ads"),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          )
        ],
      )),
    );
  }
}
