import "Classe Carro.dart";

void main(){
  var carro1 = Carro();
  carro1.cor = 'Azul';
  carro1.tanque = -10;
  carro1.modelo = 'Uno';
  // var carro1 = Carro("Gol", 50, "Azul");

  print('A cor do carro é ${carro1.cor}.');
}
