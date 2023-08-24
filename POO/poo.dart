class Carro {
  int qtdPortas = 4;
  String nome = 'K';
  String marca = 'Ford';

  String nomeCompleto() {
    return '$marca $nome';
  }
}

void main() {
  Carro carro = new Carro();
  print(carro.nomeCompleto());
}
