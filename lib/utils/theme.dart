import 'package:flutter/material.dart';

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

ThemeData getLightTheme() {
  return ThemeData(
    fontFamily: 'Sahitya',
    primarySwatch: white,
    // brightness: Brightness.light,
  );
}

ThemeData getDarkTheme() {
  return ThemeData(
    fontFamily: 'Sahitya',

    brightness: Brightness.dark,
    indicatorColor: Colors.red[400],
    accentColor: Colors.red[400],
    canvasColor: Colors.black,
    primaryColor: Color(0xff111111),
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    cardColor: Color.fromRGBO(64, 75, 96, .9),
    scaffoldBackgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
  );
}
