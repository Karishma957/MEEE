import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomCard extends StatelessWidget {
  final String message;

  BottomCard({this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Text(
          message,
          style: GoogleFonts.sunshiney(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
