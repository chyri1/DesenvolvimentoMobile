class Carro{
  String? _modelo;
  int? _tanque;
  String? _cor;

int? get tanque => this._tanque;
set tanque(int? valorParaOTanque) {
  if (valorParaOTanque! > 0){
  this._tanque = valorParaOTanque;
} else {
  print('Não é possível adicionar um valor negativo de combustível.');
}

}

String? get modelo => this._modelo;
set modelo(String? modelo){this._modelo = modelo;}
String? get cor => this._cor;
set cor(String? cor){this._cor = cor;}

// int? get tanque = {
// return this._tanque;
// }

// Carro (modelo, tanque, cor){
//   this.modelo = modelo;
//   this.tanque = tanque;
//   this.cor = cor;
// }

void movimentar(){
  print("O carro está em movimento.");
}


}
