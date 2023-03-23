import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      appBarTheme: const AppBarTheme(
          elevation: 1,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      appBarTheme: const AppBarTheme(
        brightness: Brightness.dark
          ));

}
