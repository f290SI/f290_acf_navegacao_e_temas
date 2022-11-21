import 'package:flutter/material.dart';

final KprimaryDarkColor = Colors.pink.shade200;

Map<int, Color> cpsColor = {
  50: const Color.fromRGBO(178, 0, 0, .1),
  100: const Color.fromRGBO(178, 0, 0, .2),
  200: const Color.fromRGBO(178, 0, 0, .3),
  300: const Color.fromRGBO(178, 0, 0, .4),
  400: const Color.fromRGBO(178, 0, 0, .5),
  500: const Color.fromRGBO(178, 0, 0, .6),
  600: const Color.fromRGBO(178, 0, 0, .7),
  700: const Color.fromRGBO(178, 0, 0, .8),
  800: const Color.fromRGBO(178, 0, 0, .9),
  900: const Color.fromRGBO(178, 0, 0, 1),
};

MaterialColor mColor = MaterialColor(0xFFB20000, cpsColor);

final KlightTheme = ThemeData(
  colorScheme: const ColorScheme.light().copyWith(
    primary: mColor,
    secondary: const Color.fromRGBO(102, 102, 102, 1),
  ),
  splashColor: mColor.shade100,
);

final KdarkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.dark(
    surface: Colors.white12,
    primary: KprimaryDarkColor,
    secondary: KprimaryDarkColor,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: KprimaryDarkColor,
  ),
);
