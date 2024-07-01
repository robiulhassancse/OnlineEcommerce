 import 'package:flutter/material.dart';
import 'package:online_commerce/theme/custom_theme/text_theme.dart';

class OnlineEcommerceTheme{
  OnlineEcommerceTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: OnlineEcommerceTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: OnlineEcommerceTextTheme.darkTextTheme,
  );
 }