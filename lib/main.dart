import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:scanner/screens/home_page.dart';
import 'package:scanner/screens/login_page.dart';
import 'package:scanner/utils/routes.dart';
import 'package:scanner/widgets/Themes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      routes: {
        myRoutes.homeRoute: (context) => HomePage(),
        myRoutes.loginRoute: (context) => LoginPage(),
        "/": (context) => HomePage(),
      },
    );
  }
}
