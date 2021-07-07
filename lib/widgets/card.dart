import 'package:flutter/material.dart';
import 'package:freelance/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/models/job.dart';

class PopularJob extends StatelessWidget {
  final Job job;
  PopularJob(this.job);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Image.asset(job.url, width: 145, height: 106),
          ),
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              job.title,
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: blackColor.withOpacity(0.9),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              job.totalJob,
              style: GoogleFonts.lato(
                fontSize: 14,
                color: blackColor.withOpacity(
                  0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
