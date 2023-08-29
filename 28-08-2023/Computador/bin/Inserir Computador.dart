import 'Classe Computador.dart';

void main(){
  var computador1 = Computador();
  computador1.marca = 'Dell';
  computador1.modelo = 'Inspiron';
  computador1.ano = 2021;
  computador1.memoriaRAM = -8;

  print('O computador é um ${computador1.marca} ${computador1.modelo} de ${computador1.ano} com ${computador1.memoriaRAM} de memória RAM.');
}

