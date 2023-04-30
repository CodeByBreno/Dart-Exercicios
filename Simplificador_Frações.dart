import 'dart:io';

String simplificar(int A, int B) {
  int M, m, q, r;
  if (A > B) {
    M = A;
    m = B;
  } else {
    M = B;
    m = A;
  }
  while (m != 0) {
    q = M ~/ m;
    r = M % m;
    M = m;
    m = r;
  }
  A = A ~/ M;
  B = B ~/ M;
  if ((A > 0 && B < 0) || (A < 0 && B < 0)) {
    A = -1 * A;
    B = -1 * B;
  }
  return (A.toString() + "/" + B.toString());
}

main() {
  String line = stdin.readLineSync()!;
  List<int> fraction = [];
  if (line.contains('/')) {
    List<String> entrada = line.split('/');
    fraction.add(int.parse(entrada[0]));
    fraction.add(int.parse(entrada[1]));
    print("Simplificado = " + simplificar(fraction[0], fraction[1]));
    print(
        "Resultado numérico = ${(fraction[0] / fraction[1]).toStringAsFixed(3)}");
  } else {
    print('Entrada inválida');
  }
}
