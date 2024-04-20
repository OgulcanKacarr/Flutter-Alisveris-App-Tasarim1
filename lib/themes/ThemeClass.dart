import 'package:flutter/material.dart';
import 'package:flutter_tasarim_1/themes/color/Constant.dart';

class ThemeClass{
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Constant.gray,
  );
  static ThemeData lightheme = ThemeData.light().copyWith(
    //gövedenin arkaplan rengi ayarlayalım
    scaffoldBackgroundColor: Constant.white,
  );

}