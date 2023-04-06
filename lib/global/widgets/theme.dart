import 'package:flutter/material.dart';

class CustomTheme {
  // CustomTheme._();

  static final ThemeData lightTheme = ThemeData(
    fontFamily: "OpenSans",
    scaffoldBackgroundColor: const Color(0xffF2F5FA),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffFFFFFF),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xff222831),
    ),
    primaryColor: const Color(0xfff3912e),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Color.fromRGBO(21, 44, 44, 0.749),
        fontSize: 15,
      ),
      bodyMedium: TextStyle(color: Color.fromRGBO(0, 0, 0, .7),fontSize: 20),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: 35
      ),
      labelSmall: TextStyle(
        color: Color.fromARGB(255, 99, 99, 99), fontSize: 12
      ),
      labelMedium: TextStyle(
        fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
      ),
    ),
    colorScheme: ColorScheme(
      primary: const Color.fromRGBO(8, 15, 15, .75) ,
      secondary: const Color.fromRGBO(8, 15, 15, .85),
      tertiary:const Color(0xff222831),
      background: const Color(0xff15181e),
      onBackground: Colors.white,
      brightness: Brightness.light,
      error: Colors.red[800]!,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      surface: Colors.white,
      // secondaryVariant: Colors.black,
      // primaryVariant: Colors.red[700]!,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    fontFamily: "OpenSans",
    scaffoldBackgroundColor: const Color(0xff15181e),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff262c36),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xffeeeeee),
    ),
    primaryColor: const Color(0xfff3912e),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Color.fromARGB(255, 225, 225, 220),
        fontSize: 15,
      ),
      bodyMedium: TextStyle(
        color: Color.fromARGB(255, 248, 248, 233),
        fontSize: 20,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: 35,
      ),
      labelSmall: TextStyle(
        color: Color.fromARGB(255, 190, 184, 184), fontSize: 12
      ),
      labelMedium: TextStyle(
        fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme(
      primary: const Color(0xffffffbf),
      secondary: const Color(0xffffffd9),
      tertiary:const Color(0xffeeeeee),
      background: const Color(0xff15181e),
      onBackground: Colors.white,
      brightness: Brightness.light,
      error: Colors.red[800]!,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      surface: Colors.white,
      // secondaryVariant: Colors.black,
      // primaryVariant: Colors.red[700]!,
    ),
  );
}
