class Carro{
  String? modelo;
  int? tanque;
  String? cor;

// Carro (modelo, tanque, cor){
//   this.modelo = modelo;
//   this.tanque = tanque;
//   this.cor = cor;
// }

void movimentar(){
  print("O carro está em movimento.");
}

}

void main(){
  var carro1 = Carro();
  carro1.cor = 'Azul';
  carro1.tanque = 10;
  carro1.modelo = 'Uno';
  // var carro1 = Carro("Gol", 50, "Azul");

  print('Cor do carro: ${carro1.cor}');
}

