// dados_pessoais_page.dart
import 'package:flutter/material.dart';
import 'configuracoes_adicionais_page.dart';
import 'cadastro_model.dart';

class DadosPessoaisPage extends StatefulWidget {
  const DadosPessoaisPage({super.key});

  @override
  _DadosPessoaisPageState createState() => _DadosPessoaisPageState();
}

class _DadosPessoaisPageState extends State<DadosPessoaisPage> {
  final _formKey = GlobalKey<FormState>();
  final CadastroModel cadastro = CadastroModel();

  // Controladores e FocusNodes
  final emailController = TextEditingController();
  final telefoneController = TextEditingController();
  final RAController = TextEditingController();
  final FocusNode emailFocus = FocusNode();
  final FocusNode telefoneFocus = FocusNode();
  final FocusNode RAFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro Uniso'),
        backgroundColor: Color.fromARGB(255, 0, 162, 255),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // Imagem do Aluno (Placeholder)
              Image.asset('assets/logo.webp', height: 100, width: 100,),
              // Opção para usar uma imagem real (comentada)
              // Image.asset('src/logo.webp'),

              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nome';
                  }
                  return null;
                },
                onSaved: (value) => cadastro.nome = value!,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(emailFocus);
                },
              ),
              TextFormField(
                controller: RAController,
                decoration: const InputDecoration(labelText: 'RA'),
                focusNode: RAFocus,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 8 || value.length > 8) {
                    return 'RA inválido';
                  }
                  return null;
                },
                onSaved: (value) => cadastro.ra = value!,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                focusNode: emailFocus,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(telefoneFocus);
                },
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'E-mail inválido';
                  }
                  return null;
                },
                onSaved: (value) => cadastro.email = value!,
              ),
              TextFormField(
                controller: telefoneController,
                decoration: const InputDecoration(labelText: 'Telefone'),
                focusNode: telefoneFocus,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 10) {
                    return 'Telefone inválido, tente inserir o DDD';
                  }
                  return null;
                },
                onSaved: (value) => cadastro.telefone = value!,
              ),
              DropdownButtonFormField<String>(
                value: cadastro.area.isEmpty
                    ? null
                    : cadastro.area,
                items: ['Humanas', 'Exatas', 'Biológicas', 'Tecnológicas', 'Veterinária'].map((String area) {
                  return DropdownMenuItem<String>(
                    value: area,
                    child: Text(area),
                  );
                }).toList(),
                                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Escolha uma área';
                  }
                  return null;
                },
                onChanged: (value) =>
                    setState(() => cadastro.area = value ?? ''),
                decoration: const InputDecoration(labelText: 'Área de conhecimento'),
                isDense: true,
                hint: const Text('Selecione uma área'),
              ),

Text(''),

              ElevatedButton(
                
                child: const Text('Próximo'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ConfiguracoesAdicionaisPage(cadastro: cadastro),
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