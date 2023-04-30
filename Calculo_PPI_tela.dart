import 'dart:io';
import 'dart:math';

main() {
  print("Insira a resolução da tela: ");
  String line = stdin.readLineSync()!;
  List<String> entradas = line.split('x');
  int L = int.parse(entradas[0]);
  int A = int.parse(entradas[1]);
  print("Insira o tamanho: ");
  double t = double.parse(stdin.readLineSync()!);
  print("ppi = ${sqrt(pow(L, 2) + pow(L, 2)) / t}");
}
