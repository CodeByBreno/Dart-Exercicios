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

main() async {
  //var line = stdin.readLineSync();
  //int N = int.parse(line!), Luz;
  File entrada = new File('valores.txt');
  File saida = new File('resultado.txt');
  saida.writeAsString('');

  List<String> valores = entrada.readAsLinesSync();
  int N, Luz;

  if (int.tryParse(valores[0]) != null)
    N = int.parse(valores[0]);
  else
    throw Exception('Invalid Entry');

  for (int i = 1; i < N + 1; i++) {
    //line = stdin.readLineSync();
    //while (int.tryParse(line!) == null) line = stdin.readLineSync();
    //Luz = int.parse(line);
    Luz = int.parse(valores[i]);
    List<String> Binario = converter_binario(Luz);
    int R = max_sequencia(Binario);
    stdout.write(R.toString() + '\n');
    saida.writeAsString(R.toString() + '\n', mode: FileMode.append);
  }
}
