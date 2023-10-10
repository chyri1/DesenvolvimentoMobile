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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 160, 51, 0)),
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

  String _campoNome = '';
  String _campoEmail = '';
  String _campoTelefone = '';

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
                    campoNome = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Nome",
                    hintText: "Insira seu nome",
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    campoEmail = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Insira seu email",
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    campoTelefone = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Telefone",
                    hintText: "Insira seu telefone",
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Nome: $_campoNome",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Email: $_campoEmail",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Telefone: $_campoTelefone",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _campoNome = campoNome;
                        _campoEmail = campoEmail;
                        _campoTelefone = campoTelefone;
                      });
                    },
                    child:
                        const Text("Inserir >", style: TextStyle(fontSize: 25)))
              ],
            )),
      ),
    );
  }
}
