import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
   textTheme: GoogleFonts.plusJakartaSansTextTheme(), // Apply the font to the text theme
   scaffoldBackgroundColor: Colors.white,
  fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Color.fromRGBO(41, 96, 156, 1),
    secondary: Colors.black,
    onPrimary: Colors.white,
  ),
);
