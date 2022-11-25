import 'package:flutter/material.dart';

final primaryDarkColor = Colors.pink.shade200;

const profileImageUrl =
    'https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';

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

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      primary: mColor,
      secondary: const Color.fromRGBO(102, 102, 102, 1),
    ),
    splashColor: mColor.shade100,
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(
      surface: Colors.white12,
      primary: primaryDarkColor,
      secondary: primaryDarkColor,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryDarkColor,
    ),
  );
}
