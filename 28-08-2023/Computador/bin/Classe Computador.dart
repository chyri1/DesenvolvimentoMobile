class Computador{
  String? _marca;
  String? _modelo;
  int? _ano;
  int? _memoriaRAM;

int? get memoriaRAM => this._memoriaRAM;
set memoriaRAM(int? valormemoriaRAM) {
  if (valormemoriaRAM! > 0){
  this._memoriaRAM = valormemoriaRAM;
} else {
  print('Não é possível ter um valor negativo de memória RAM.');
}

}

String? get marca => this._marca;
set marca(String? marca){this._marca = marca;}
String? get modelo => this._modelo;
set modelo(String? modelo){this._modelo = modelo;}
int? get ano => this._ano;
set ano(int? ano){this._ano = ano;}

void ligar(){
  print("O computador está ligado.");
}

}
