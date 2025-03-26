
import 'package:flutter/material.dart';
import 'package:helloworld/utils/theme/custom_themes/text_theme.dart';

class TAppTheme{
  TAppTheme._();
  static ThemeData lightTheme =ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
  );
  static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
  );

}
