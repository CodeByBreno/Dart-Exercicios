import 'dart:io';

String inverter(String entrada) {
  int i, T = entrada.length;
  List resultado = List.filled(T, 0);
  for (i = 0; i < T; i++) resultado[i] = entrada[T - i - 1];
  return (resultado.join());
}

main() {
  var line = stdin.readLineSync();
  if (line != null) {
    int N = int.parse(line), i = 0;

    while (i++ < N) {
      line = stdin.readLineSync();
      if (line != null) {
        int T = line.length;
        var FirstHalf = line.substring(0, T ~/ 2);
        var SecondHalf = line.substring(T ~/ 2, T);
        print(inverter(FirstHalf) + inverter(SecondHalf));
      }
    }
  }
}
