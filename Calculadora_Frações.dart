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
  var ciclos = stdin.readLineSync();
  int N, i = 0;
  if (ciclos != null) {
    N = int.parse(ciclos);

    for (i = 0; i < N; i++) {
      var line = stdin.readLineSync();
      if (line != null) {
        int N1 = int.parse(line[0]);
        int D1 = int.parse(line[4]);
        String op = line.substring(6, 7);
        int N2 = int.parse(line[8]);
        int D2 = int.parse(line[12]);

        switch (op) {
          case ('+'):
            N1 = N1 * D2 + N2 * D1;
            D1 = D1 * D2;
            break;
          case ('-'):
            N1 = N1 * D2 - N2 * D1;
            D1 = D1 * D2;
            break;
          case ('*'):
            N1 = N1 * N2;
            D1 = D1 * D2;
            break;
          case ('/'):
            N1 = N1 * D2;
            D1 = D1 * N2;
            break;
        }

        print("$N1/$D1 = " + simplificar(N1, D1));
      }
    }
  }
}
