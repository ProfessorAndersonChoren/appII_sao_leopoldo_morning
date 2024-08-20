import 'dart:io';

void main() {
  print('Digite uma frase, e lhe darei informações sobre ela');
  final String phrase = stdin.readLineSync()!;

  // Computar os dados
  final int characters = phrase.length;
  final int words = phrase.split(' ').length;

  // Saída de dados
  print('A frase "$phrase" contém $characters caracteres.');
  print('A frase "$phrase" contém $words palavras');
}
