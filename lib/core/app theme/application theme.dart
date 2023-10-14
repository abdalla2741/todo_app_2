import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF5D9CEC),
      primary: const Color(0xFF5D9CEC),
      background: const Color(0xFFDDEADA),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF5D9CEC),
      shape: StadiumBorder(
        side: BorderSide(width: 4, color: Colors.white),
      ),
      elevation: 3,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xFF5D9CEC),
      unselectedItemColor: Color(0xFFC8C9CB),
      selectedIconTheme: IconThemeData(
        size: 32,
        weight: 900,
      ),
      unselectedIconTheme: IconThemeData(
        size: 28,
        weight: 900,
      ),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.poppins(
          fontWeight:FontWeight.bold,
          fontSize: 18,
          color: Color(0xFF5D9CEC)
      ),
      bodyMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: Colors.black
      ),
      displayLarge: GoogleFonts.poppins(
        fontWeight:FontWeight.bold,
        fontSize: 18,
        color: Colors.black
      ),
      displayMedium: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.normal
      ),
      displaySmall: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
          fontWeight: FontWeight.normal
      )
    ),
    dividerTheme: DividerThemeData(
      color: Color(0xFF5D9CEC),
      indent: 1,
      endIndent: 1,
      thickness: 4
    )
  );
}
