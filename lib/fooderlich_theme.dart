import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodySmall: GoogleFonts.openSans(
      fontSize: 14.0,
      color: Colors.black, // Enumeration? of colors
      fontWeight: FontWeight.w600, 
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 32.0,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 36.0,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 40.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodySmall: GoogleFonts.openSans(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 32.0,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 36.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 40.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static ThemeData light(){
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      textTheme: lightTextTheme,
      textSelectionTheme: const TextSelectionThemeData(selectionColor: Colors.blue),
    );
  }

  static ThemeData dark(){
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      textTheme: darkTextTheme,
      textSelectionTheme: const TextSelectionThemeData(selectionColor: Colors.green),
    );
  }
  
}