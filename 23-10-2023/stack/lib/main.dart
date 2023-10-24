import 'package:flutter/material.dart';
import 'package:stack/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chyri',
      theme: ThemeData(
        colorScheme: ColorScheme.highContrastDark(),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'É o Magras'),
    );
  }
}
