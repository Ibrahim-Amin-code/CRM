import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightMode ()=> ThemeData(
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.grey.shade100,
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(
        color: Colors.black
    ),
    elevation: 0,
    backwardsCompatibility: false,
    titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo'),
    backgroundColor: Colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    selectedLabelStyle: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: HexColor('#2972B7')),
    unselectedLabelStyle: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: HexColor('#626262')),
    // elevation: 5
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Cairo',
      fontSize: 16,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
      fontSize: 16,
      color: Colors.black,
    ),
    headline1: TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: 'Cairo',
      fontSize: 14,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
      fontSize: 20,
      color: Colors.black,
    ),
  ),
  shadowColor: Colors.white,
  primaryColor: Colors.white,
);

ThemeData darkMode ()=> ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.black12
    ),
    shadowColor: Colors.black12,
    primaryColor: Colors.black12,
    backgroundColor: Colors.black54,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'Cairo',
        fontSize: 16,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
        fontSize: 16,
        color: Colors.white,
      ),
      headline1: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Cairo',
        fontSize: 14,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: HexColor('#333739'),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,

      ),
      elevation: 0,
      backwardsCompatibility: false,
      iconTheme: IconThemeData(
          color: Colors.white
      ),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Cairo'),
      backgroundColor: HexColor('#333739'),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      backgroundColor: HexColor('#333739'),
      selectedLabelStyle: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
      // elevation: 5
    ));