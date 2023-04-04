import 'package:flutter/material.dart';

class CustomThemeNotifier with ChangeNotifier{

  bool isDarkTheme = false;
  void updateTheme(bool isDarkMode) {
    isDarkTheme = isDarkMode;
    notifyListeners();
  }

}