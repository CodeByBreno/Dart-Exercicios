import 'dart:math';

main() {
  List<String> nomes = List.generate(5, gerador);
  print(nomes);
}

String gerador(int i) {
  return ((i * 2).toString());
}
