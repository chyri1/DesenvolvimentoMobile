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
  String campoSenha = '';
  bool switchValue = false;
  double valorSlider = 0;

  String _campoNome = '';
  String _campoEmail = '';
  String _campoTelefone = '';
  String _campoSenha = '';
  String _switchValue = '';
  String _valorSlider = '';

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
                  keyboardType: TextInputType.phone,
                  // inputFormatters: ,
                  decoration: InputDecoration(
                    labelText: "Telefone",
                    hintText: "Insira seu telefone",
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    campoSenha = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    hintText: "Insira sua senha",
                  ),
                ),
                SwitchListTile(
                    title: const Text("Receber notificações"),
                    value: switchValue,
                    onChanged: (bool value) {
                      setState(() {
                        switchValue = value;
                      });
                    }),
                Text(
                  "Nota:",
                ),
                Slider(
                    value: valorSlider,
                    min: 0,
                    max: 100,
                    divisions: 101,
                    label: valorSlider.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        valorSlider = value;
                      });
                    }),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _campoNome = campoNome;
                        _campoEmail = campoEmail;
                        _campoTelefone = campoTelefone;
                        _campoSenha = campoSenha;
                        _switchValue = (switchValue == true) ? "Sim" : "Não";
                        _valorSlider = valorSlider.round().toString();
                      });
                    },
                    child: const Text("Inserir >",
                        style: TextStyle(fontSize: 20))),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Nome: $_campoNome",
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  "Email: $_campoEmail",
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  "Telefone: $_campoTelefone",
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  "Senha: $_campoSenha",
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  "Notificações: $_switchValue",
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  "Nota: $_valorSlider",
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            )),
      ),
    );
  }
}
