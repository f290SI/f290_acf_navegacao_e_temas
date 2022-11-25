import 'package:f290_acf_navegacao_e_temas/pages/home/home_page.dart';
import 'package:f290_acf_navegacao_e_temas/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Navigation and Themes',
      home: HomePage(),
      routes: {},
    );
  }
}
