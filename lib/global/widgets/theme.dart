import 'package:flutter/material.dart';

class CustomTheme {
  // CustomTheme._();

  static final ThemeData lightTheme = ThemeData(
    fontFamily: "OpenSans",
    scaffoldBackgroundColor: const Color(0xffF2F5FA),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffFFFFFF),
    ),
    primaryColor: const Color(0xfff3912e),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Color.fromRGBO(8,15,15,.75),
      ),
      bodyMedium: TextStyle(color: Color.fromRGBO(8,15,15,.85)),
      bodyLarge: TextStyle(color: Color(0xff222831)),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    fontFamily: "OpenSans",
    scaffoldBackgroundColor: const Color(0xff15181e),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff262c36),
    ),
    primaryColor: const Color(0xfff3912e),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Color(0xffffffbf),
      ),
      bodyMedium: TextStyle(color: Color(0xffffffd9)),
      bodyLarge: TextStyle(color: Color(0xffeeeeee)),
    ),
  );
}
