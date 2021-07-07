import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelance/pages/succes.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool checked = false;
  Widget check(title) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 5,
            top: 30,
            bottom: 14,
          ),
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Transform.scale(
                scale: 1.6,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      6,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1.65,
                      ),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    width: Checkbox.width,
                    height: Checkbox.width,
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.transparent,
                      ),
                      child: Checkbox(
                        value: checked,
                        onChanged: (value) {
                          setState(() {
                            checked = value;
                          });
                        },
                        checkColor: Colors.white,
                        activeColor: Color(0xffAF4A53),
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 25,
          ),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(
                left: 24,
              ),
              alignment: Alignment.centerLeft,
              width: 20,
              height: 20,
              child: Image.asset(
                'assets/images/Back.png',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(
                  25,
                ),
                border: Border.all(
                  color: Color(0xffAF4A53),
                  width: 2,
                )),
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Payment Checkout",
                      style: GoogleFonts.lato(
                        color: Color(
                          0xffAF4A53,
                        ),
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Harga Pembayaran",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Rp. 5.000.000",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kode Pembayaran",
                          style: GoogleFonts.lato(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "QF45AA31C",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Transfer",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Rp. 5.000.000",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Informasi Penting",
                    style: GoogleFonts.lato(
                      color: Color(0xffAF4A53),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      "Proses konfirmasi membutuhkan waktu. Jika anda tidak menerima pesan email dari kami dalam waktu 1x24 jam. Silahkan hubungi Customer Service kami. Mohon bersabar dan Terimakasih",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Terms & Conditions",
                    style: GoogleFonts.lato(
                      color: Color(0xffAF4A53),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  check("Menyetujui Terms & Condition"),
                  check(
                    "Resiko Perjualbelian / Transaksi\ndiluar Aplikasi ditanggung client.",
                  ),
                  check("Setuju untuk membayar dengan\nnominal yang tepat."),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: (checked = true)
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return SuccessCheckOut();
                                  },
                                ),
                              );
                            }
                          : null,
                      child: Text(
                        "Checkout Now",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffAF4A53),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 20,
                          right: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
      backgroundColor: Color(0xffECC2B9),
    );
  }
}
