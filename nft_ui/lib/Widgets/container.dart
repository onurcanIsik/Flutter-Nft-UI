import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget profileContainer(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 2,
            spreadRadius: 2,
            color: Color.fromARGB(255, 82, 81, 81),
          )
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
