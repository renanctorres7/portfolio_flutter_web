import 'package:flutter/material.dart';
import 'package:portfolio/app/core/configs/configs.dart';

ThemeData appThemeData() {
  const textTheme = TextTheme(
    headline1: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.white,
        fontSize: 26,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w800),
    headline2: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.graphite,
        fontSize: 26,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w800),
    subtitle1: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.white,
        fontSize: 18,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w600),
    subtitle2: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.graphite,
        fontSize: 18,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w600),
    bodyText1: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.white,
        fontSize: 16,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w400),
    bodyText2: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.graphite,
        fontSize: 16,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w400),
  );

  return ThemeData(textTheme: textTheme, fontFamily: 'quicksand');
}
