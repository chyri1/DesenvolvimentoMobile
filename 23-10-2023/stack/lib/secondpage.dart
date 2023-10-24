import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  TextEditingController textfield3Controller = TextEditingController();

  TextEditingController textfield4Controller = TextEditingController();

  List<dynamic> dadosPage1 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textfield3Controller,
                decoration: InputDecoration(hintText: "Digite seu endereço"),
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: textfield4Controller,
                decoration: InputDecoration(hintText: "Digite seu sexo"),
                textAlign: TextAlign.center,
              ),
              const Divider(),
              ElevatedButton(onPressed: () {}, child: const Text("Enviar"))
            ],
          ),
        ));
  }
}
