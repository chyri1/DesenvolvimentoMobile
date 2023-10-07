// configuracoes_adicionais_page.dart
import 'package:flutter/material.dart';
import 'cadastro_model.dart';
import 'resumo_cadastro_page.dart';

class ConfiguracoesAdicionaisPage extends StatefulWidget {
  final CadastroModel cadastro;

  const ConfiguracoesAdicionaisPage({super.key, required this.cadastro});

  @override
  _ConfiguracoesAdicionaisPageState createState() =>
      _ConfiguracoesAdicionaisPageState();
}

class _ConfiguracoesAdicionaisPageState
    extends State<ConfiguracoesAdicionaisPage> {
  final _formKey = GlobalKey<FormState>();
  final cursoController = TextEditingController();
  final FocusNode cursoFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações Adicionais'),
        backgroundColor:  Color.fromARGB(255, 0, 162, 255),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: cursoController,
                decoration:
                    const InputDecoration(labelText: 'Curso ou Especialização'),
                focusNode: cursoFocus,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu curso ou especialização';
                  }
                  return null;
                },
                onSaved: (value) => widget.cadastro.curso = value!,
              ),
              Text(''),
              SwitchListTile(
                title: const Text('Receber novidades via WhatsApp e email?'),
                value: widget.cadastro.receberNotificacoes,
                onChanged: (bool value) {
                  setState(() {
                    widget.cadastro.receberNotificacoes = value;
                  });
                },
              ),

              Text(''),


              ElevatedButton(
                child: const Text('Salvar'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ResumoCadastroPage(cadastro: widget.cadastro),
                    ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
