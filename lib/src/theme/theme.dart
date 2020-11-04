import 'package:flutter/material.dart';

final themeCustom = ThemeData.light().copyWith(
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xff000639),
    ),
    primaryColor: Color(0xff000639),
    buttonColor: Color(0xff000639),
    accentColor: Color(0xff000639),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontFamily: 'GalanoGrotesque',
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Color(0xff2a2a2a),
          letterSpacing: 1),
      headline4: TextStyle(
          fontFamily: 'GalanoGrotesque',
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: Color(0xff2a2a2a),
          letterSpacing: 1),
      bodyText1: TextStyle(
          fontFamily: 'ProximaNova',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff212b36)),
      bodyText2: TextStyle(
          fontFamily: 'ProximaNova',
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Color(0xff626262)),
      subtitle1: TextStyle(
          fontFamily: 'ProximaNova',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xffffffff)),
      headline2: TextStyle(
          fontFamily: 'ProximaNova',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black),
      button: TextStyle(
          fontFamily: 'ProximaNova',
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.black),
    ));
