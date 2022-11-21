import 'package:f290_acf_navegacao_e_temas/assets/constants.dart';
import 'package:f290_acf_navegacao_e_temas/pages/theme/theme_sample.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: KlightTheme,
      darkTheme: KdarkTheme,
      home: const ThemeExample(),
      routes: {},
    );
  }
}
