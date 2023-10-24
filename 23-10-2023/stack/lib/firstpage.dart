import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textfield1Controller = TextEditingController();
  TextEditingController textfield2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textfield1Controller,
                decoration: InputDecoration(hintText: "Digite seu nome"),
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: textfield2Controller,
                decoration: InputDecoration(hintText: "Digite seu sobrenome"),
                textAlign: TextAlign.center,
              ),
              const Divider(),
              ElevatedButton(onPressed: () {}, child: const Text("Enviar"))
            ],
          ),
        )
        // Center(
        //   child:
        // Center(
        //   child: SingleChildScrollView(
        //   child: Column(
        //
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text(
        //         'You have pushed the button this many times:',
        //       ),
        //       Text(
        //         '$_counter',
        //         style: Theme.of(context).textTheme.headlineMedium,
        //       ),
        //       Stack(
        //         alignment: Alignment.center,
        //         children: [
        //       Container(
        //         color: Colors.amberAccent,
        //         child: SizedBox(
        //         height: 600,
        //         width: 600,)
        //       ),
        //       Container(
        //         color: const Color.fromARGB(255, 255, 255, 255),
        //         child: SizedBox(
        //         height: 500,
        //         width: 500,)
        //       ),
        //       Container(
        //         color: const Color.fromARGB(255, 0, 0, 0),
        //         child: SizedBox(
        //         height: 400,
        //         width: 400,)
        //         ),
        //        ],
        //       ),
        //     ],
        //   ),
        // ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
        );
  }
}
