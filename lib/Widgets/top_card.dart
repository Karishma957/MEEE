import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCard extends StatelessWidget {
  final String imgUrl, name;

  TopCard({this.imgUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Column(
        children: [
          Container(
            height: 350,
            padding: const EdgeInsets.all(25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: imgUrl != null
                  ? Image.asset(
                      imgUrl,
                      fit: BoxFit.contain,
                    )
                  : Container(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: GoogleFonts.blackHanSans(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
