import 'dart:io';

void main() {
  print('Digite uma frase');
  final String phrase = stdin.readLineSync()!;
  print('Digite o termo a ser procurado');
  final String search = stdin.readLineSync()!;
  print('Digite o termo pelo qual será substituído');
  final String replace = stdin.readLineSync()!;

  // Processamento
  final result = phrase.
  replaceAll(search.toLowerCase(), replace.toLowerCase())
  .replaceAll(search.toUpperCase(), replace.toUpperCase());

  // Saída
  print(result);
}
