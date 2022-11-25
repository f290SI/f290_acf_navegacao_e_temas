import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Atributos estáticos de cores para o tema claro
  static const lightColorPrimary = Colors.green;
  static const lightColorSecondary = Colors.red;

  // Criação do tema padrão utilizando fontes customizadas para o HeadLine4 e bodyText1
  static var textTheme = TextTheme(
    headline4: GoogleFonts.raleway(fontSize: 36),
    bodyText1: GoogleFonts.libreBaskerville(fontSize: 20),
  );

  // Criação do ThemeData do tema claro
  static final lightTheme = ThemeData.light().copyWith(
    textTheme: textTheme,
    colorScheme: const ColorScheme.light(
      primary: lightColorPrimary,
      secondary: lightColorSecondary,
    ),
  );

// Atributos estáticos de cores para o tema escuro
  static final darkColor = Colors.green.shade200;

  // Criação do ThemeData do tema escuro
  static final darkTheme = ThemeData(
    // Alteração do brightness do tema, removemos o copyWith()
    brightness: Brightness.dark,
    textTheme: textTheme,
    colorScheme: ColorScheme.dark(
      surface: Colors.white.withAlpha(12),
      background: Colors.black12,
      secondary: darkColor,
    ),
    iconTheme: IconThemeData(color: darkColor),
    buttonTheme: ButtonThemeData(buttonColor: darkColor),
  );
}
