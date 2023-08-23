import 'dart:io';
import 'dart:math';

void main() {
  print(genPass());
}

//adicionar verificador para garantir que o valor recebido pela variavel nums (L 12 - String? nums = stdin.readLineSync();) possa ser convertido para inteiro.
int getNum() {
  int num = 0;
  print('Digite a quantidade de caracteres que deseja que a senha possua:');
  String? nums = stdin.readLineSync();
  if (nums == null) {
    getNum();
  } else {
    num = int.parse(nums);
  }
  return num;
}

String? genPass() {
  String chars = 'abcdefghijlmnopqrstuvxz';
  String pass = '';
  int contador = getNum() - 1;

  var rng = Random();
  for (var i = 0; i <= contador; i++) {
    pass += chars[rng.nextInt(22)];
  }
  return pass;
}
