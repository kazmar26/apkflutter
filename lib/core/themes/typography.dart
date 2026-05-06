// /lib/core/themes/typography.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle headline1 = GoogleFonts.poppins(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );
  
  static TextStyle headline2 = GoogleFonts.poppins(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );
  
  static TextStyle headline3 = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );
  
  static TextStyle headline4 = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  
  static TextStyle headline5 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  
  static TextStyle headline6 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  
  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 16,
    height: 1.5,
  );
  
  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 14,
    height: 1.5,
  );
  
  static TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 12,
    height: 1.4,
  );
  
  static TextStyle button = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
  );
  
  static TextStyle caption = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.grey,
  );
}