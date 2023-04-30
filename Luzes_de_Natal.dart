import 'dart:io';

List<String> converter_binario(int n) {
  List<String> resultado = [];
  List<String> aux = [];
  while (n != 0) {
    if (n % 2 == 0)
      aux.add('0');
    else
      aux.add('1');
    n = n ~/ 2;
  }
  for (int i = aux.length - 1; i >= 0; i--) resultado.add(aux[i]);
  return (resultado);
}

int max_sequencia(List<String> entrada) {
  int aux, M = 0;
  bool flag = false;
  for (int i = 0, aux = 0; i < entrada.length; i++) {
    if (entrada[i] == '1') {
      aux++;
      if (aux > M) M = aux;
    } else
      aux = 0;
  }
  return (M);
}

main() {
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < N; i++) {
    var lixo = stdin.readLineSync();
    int entrada = int.parse(stdin.readLineSync()!);
    List<String> bin = converter_binario(entrada);
    print(max_sequencia(bin));
  }
}
