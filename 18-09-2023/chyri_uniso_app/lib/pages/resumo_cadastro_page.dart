// resumo_cadastro_page.dart
import 'package:flutter/material.dart';
import 'cadastro_model.dart';

class ResumoCadastroPage extends StatelessWidget {
  final CadastroModel cadastro;

  const ResumoCadastroPage({super.key, required this.cadastro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumo do Cadastro'),
        backgroundColor: Color.fromARGB(255, 0, 162, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nome: ${cadastro.nome}'),
            Text('RA: ${cadastro.ra}'),
            Text('Email: ${cadastro.email}'),
            Text('Telefone: ${cadastro.telefone}'),
            Text('Área de conhecimento: ${cadastro.area}'),
            Text(
                'Receber Notificações: ${cadastro.receberNotificacoes ? 'Sim' : 'Não'}'),
            Text('Curso: ${cadastro.curso}'),
          ],
        ),
      ),
    );
  }
}
