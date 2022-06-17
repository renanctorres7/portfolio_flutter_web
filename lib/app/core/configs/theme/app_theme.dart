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
    headline5: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.graphite,
        fontSize: 16,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w700),
    headline6: TextStyle(
        letterSpacing: 0,
        color: ColorsApp.graphite,
        fontSize: 14,
        fontFamily: 'quicksand',
        fontWeight: FontWeight.w400),
  );

  final textButton = TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
      shape: MaterialStateProperty.resolveWith((states) =>
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.purple;
        } else {
          return ColorsApp.gray3;
        }
      }),
      textStyle: MaterialStateProperty.resolveWith((states) => const TextStyle(
          fontSize: 16,
          fontFamily: "quicksand",
          fontWeight: FontWeight.w600,
          color: ColorsApp.gray3)),
    ),
  );

  return ThemeData(
      textTheme: textTheme,
      fontFamily: 'quicksand',
      textButtonTheme: textButton);
}

class AppTheme {
  static ButtonStyle menuButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.resolveWith((states) =>
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.hovered)) {
        return Colors.white;
      } else {
        return ColorsApp.gray3;
      }
    }),
    textStyle: MaterialStateProperty.resolveWith((states) => const TextStyle(
        fontSize: 16,
        fontFamily: "quicksand",
        fontWeight: FontWeight.w500,
        color: ColorsApp.gray3)),
  );

  static BoxDecoration menuBoxDecoration = const BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
      color: ColorsApp.gray,
      boxShadow: [
        BoxShadow(color: Colors.black38, spreadRadius: 5, blurRadius: 5)
      ]);
}
