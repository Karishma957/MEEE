import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidesWidget extends StatelessWidget {
  final String imageUrl, caption;
  final double height, width;
  final Color pageColor, textColor;

  SlidesWidget({
    this.imageUrl,
    this.caption,
    this.height,
    this.width,
    this.pageColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: height * 1.5,
        width: width,
        color: pageColor,
        child: Column(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/$imageUrl',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.2,
            width: width,
            child: Padding(
              padding: EdgeInsets.only(left: 18, right: 75),
              child: Container(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  caption,
                  maxLines: 4,
                  style: GoogleFonts.blackHanSans(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                      fontSize: 30,
                      color: textColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
