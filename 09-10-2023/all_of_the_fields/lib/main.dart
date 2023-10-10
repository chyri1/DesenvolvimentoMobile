import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cadastro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String campoNome = '';
  String campoEmail = '';
  String campoTelefone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      campoNome = value;
                    });
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Nome",
                    hintText: "Insira seu nome",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Insira seu email",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Telefone",
                    hintText: "Insira seu telefone",
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Nome: $campoNome",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "Email: $campoEmail",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "Telefone: $campoTelefone",
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            )),
      ),
    );
  }
}
