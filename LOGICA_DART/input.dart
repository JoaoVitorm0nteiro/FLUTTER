import 'dart:io';

main() {
  print('Digite seu nome:');
  String? nameString = stdin.readLineSync();
  print('Prazer $nameString');

  print('Digite seu peso em KG:');
  final String? pesoString = stdin.readLineSync();

  print('Digite sua altura em metros: ');
  final String? alturaString = stdin.readLineSync();

  final double pesoKg = double.parse(pesoString!);
  final double altura = double.parse(alturaString!);
  double imc = pesoKg / (altura * altura);

  if (imc > 25) {
    print('Voce esta gordo');
  } else if (imc < 18) {
    print('Voce esta magro');
  } else {
    print('Voce esta com peso normal.');
  }
}
