import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
          elevation: 1,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(appBarTheme: const AppBarTheme(brightness: Brightness.dark));
}
