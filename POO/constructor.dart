void main() {
  final corsa = new Carro(qtdPortas: 4, nome: 'Corsa', marca: 'GM');
  final gol = Carro(qtdPortas: 4, nome: 'Gol', marca: 'Volkswagen');
  print(corsa.nomeCompleto());
  print(gol.nomeCompleto());
}

class Carro {
  late int qtdPortas;
  late String nome;
  late String marca;

  String nomeCompleto() {
    return '$marca $nome';
  }

  Carro({required int qtdPortas, required String nome, required String marca}) {
    this.qtdPortas = qtdPortas;
    this.nome = nome;
    this.marca = marca;
  }
}
