import 'package:flutter/material.dart';
import 'package:flutter_tasarim_1/themes/color/Constant.dart';

class ThemeClass{
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Constant.gray,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white, // Burada arka plan rengini belirtin
    ),
  );
  static ThemeData lightheme = ThemeData.light().copyWith(
    //gövedenin arkaplan rengi ayarlayalım
    scaffoldBackgroundColor: Constant.white,
  );

}