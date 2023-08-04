import 'dart:io';

double? peso;
double? altura;
double? imc;
String? nome;

main() {
  calcula_IMC();
}

String? SetName() {
  print('Digite seu nome:');
  final String? name = stdin.readLineSync();
  if (name == null) {
    return 'anonimo';
  } else {
    return nome = name;
  }
}

double SetWeight() {
  print('Informe seu peso: ');
  final String? pesoS = stdin.readLineSync();
  final double pesoD = double.parse(pesoS!);
  return peso = pesoD;
}

double SetHeigth() {
  print('Digite sua altura:');
  final String? alturaS = stdin.readLineSync();
  final double alturaD = double.parse(alturaS!);
  return altura = alturaD;
}

calcula_IMC() {
  SetName();
  SetHeigth();
  SetWeight();
  double imc = peso! / (altura! * 2);
  print('$nome Seu IMC = $imc');
}
