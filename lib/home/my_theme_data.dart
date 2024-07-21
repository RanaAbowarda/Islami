import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffB7935F);
  static Color secondaryBlack = Color(0xff242424);
  static Color primaryDark = Color(0xff141A2E);
  static Color secondaryYellow = Color(0xffFACC1D);
  static Color onSecondary= Color(0xff141A2E);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
    shadowColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: secondaryBlack,
        size: 30,
      ),
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
    ),
    cardColor:Colors.white ,
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
    ),),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryColor,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      bodyLarge:
          GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
      bodyMedium:
          GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
      bodySmall: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w400,color:Colors.white),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      shadowColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryDark,
      unselectedItemColor: Colors.white,
      selectedItemColor: secondaryYellow,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    cardColor:Color(0xff141A2E) ,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w600, color: secondaryYellow),
      bodySmall: GoogleFonts.inter(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
    ),
  );
}
