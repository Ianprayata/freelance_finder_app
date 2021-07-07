import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String jobdesc;
  final String reviews;

  Review({this.imageUrl, this.name, this.jobdesc, this.reviews});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30,
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20, right: 20),
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 16,
                      ),
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xffF2F4F2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 8,
                        ),
                        child: Image.asset(
                          imageUrl ?? 'assets/images/pipel4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          name ?? "Carolina Reaper",
                          style: GoogleFonts.lato(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          jobdesc ?? "CEO at PT. Kapan Sukses",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Color(
                              0xff1E2237,
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          bottom: 25,
                        ),
                        child: Text(
                          reviews ??
                              "Servisnya bagus, sangat ramah & skill komunikasinya baik. Bagi yang mau desain rapih & cepat jadi. Saya rekomendasikan ini. Terimakasih.",
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: Color(
                              0xff1E2237,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
