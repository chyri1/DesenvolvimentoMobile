// cadastro_model.dart
class CadastroModel {
  String nome = '';
  String ra = '';
  String email = '';
  String telefone = '';
  String area = '';
  bool receberNotificacoes = false;
  String curso = '';

  CadastroModel({
    this.nome = '',
    this.ra = '',
    this.email = '',
    this.telefone = '',
    this.area = '',
    this.receberNotificacoes = false,
    this.curso = '',
  });

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'ra': ra,
      'email': email,
      'telefone': telefone,
      'area': area,
      'receberNotificacoes': receberNotificacoes,
      'curso': curso,
    };
  }
}
