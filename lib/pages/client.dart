import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Clients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: <Widget>[
          Expanded(
            child: Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
          ),
          Text(
            "Sedang Tidak Memiliki Klien",
            style: GoogleFonts.lato(
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
          ),
        ])
      ],
    );
  }
}
