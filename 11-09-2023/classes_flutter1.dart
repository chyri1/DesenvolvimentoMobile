import 'package:flutter/material.dart';
import 'package:primeiro_aplicativo/pages/pagina_flutter1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


// int calculaarea ({int LadoA = 0, int LadoB = 0}) {
// int area = x * y;
//  return LadoA * LadoB;


//int areaResultado = calculaarea(LadoB: 110, LadoA: 4);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Clique no botão'),
    );
  }
}