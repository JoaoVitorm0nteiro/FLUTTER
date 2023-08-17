//listas em dart

void main() {
  var names = ['Joao', 'Pedro', 'Kropotkin', 'Marx', 'Engels', 'Lenin'];
  names.add('Bakunin');
  names.remove('Pedro');
  names.removeAt(1);
  print(names);
}
