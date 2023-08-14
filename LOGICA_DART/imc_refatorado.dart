import 'dart:io';

main() {
  String nome = getNome();
  double peso = getPeso();
  double altura = getAltura();
}

//Recebe o nome e devolve
String getNome() {
  print('Digite seu nome: ');
  final String? name = stdin.readLineSync();
  if (name == null) {
    return 'anonimo';
  } else {
    return name;
  }
}

double getPeso() {
  print('Digite seu peso: ');
  final String? pesoS = stdin.readLineSync();
  if (pesoS == null) {
    return (0.0);
  } else {
    double peso = double.parse(pesoS);
    return peso;
  }
}

double getAltura() {
  print('Digite sua altura: ');
  final String? pesoS = stdin.readLineSync();
  if (pesoS == null) {
    return (0.0);
  } else {
    double altura = double.parse(pesoS);
    return altura;
  }
}
