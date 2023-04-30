import 'dart:io';

main() {
  int A = int.parse(stdin.readLineSync()!);
  Map<String, String> traducao = {};

  //lê os idiomas e traduções
  for (int i = 0; i < A; i++) {
    traducao[stdin.readLineSync()!] = stdin.readLineSync()!;
  }

  //lê o nome das crianças e seus paises
  A = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < A; i++) {
    String nome = stdin.readLineSync()!;
    String pais = stdin.readLineSync()!;
    print(nome);
    print(traducao[pais].toString() + '\n');
  }
}
