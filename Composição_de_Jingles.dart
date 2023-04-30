import 'dart:io';

main() {
  Map<String, double> notas = {
    'W': 1,
    'H': 0.5,
    'Q': 0.25,
    'E': 0.125,
    'S': 0.0625,
    'T': 0.03125,
    'X': 0.015625
  };
  while (true) {
    int resultado = 0;
    List<String> compassos = stdin.readLineSync()!.split('/');
    compassos.removeWhere((String v) => v == '');
    if (compassos[0] == '*') break;

    compassos.forEach((String v) {
      double aux = 0;
      for (int i = 0; i < v.length; i++) {
        aux += notas[v[i]]!;
      }
      if (aux == 1) resultado++;
    });

    print(resultado);
  }
}
