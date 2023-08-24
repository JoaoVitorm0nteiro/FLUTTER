class Pessoa {
  late String name;
  late double altura;
  late double peso;

  Pessoa({
    required this.name,
    required this.altura,
    required this.peso,
  });

  double calcIMC() {
    return peso / (altura * 2);
  }
}

void main() {
  final pessoa = new Pessoa(name: 'Joao', altura: 1.75, peso: 73.2);
}
