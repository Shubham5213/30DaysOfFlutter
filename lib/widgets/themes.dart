import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamish,
        buttonColor: blueish,
        colorScheme: ColorScheme.light(
          secondary: blueish,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamish,
      buttonColor: lightBlueish,
      colorScheme: ColorScheme.light(
        secondary: Colors.white,
        brightness: Brightness.dark,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ));

  static Color creamish = Color(0xfff5f5f5);
  static Color darkCreamish = Vx.gray900;
  static Color blueish = Color(0xff403b58);
  static Color lightBlueish = Vx.indigo500;
}
