import 'dart:io';

String primeiro(List<String> entrada) {
  String aux;
  aux = entrada[0];
  for (String v in entrada) {
    if (v.compareTo(aux) < 0) {
      aux = v;
    }
  }
  return aux;
}

List<String> ordemAlf(List<String> entrada) {
  String aux;
  List<String> resultado = [];
  while (entrada.length != 0) {
    aux = primeiro(entrada);
    resultado.add(primeiro(entrada));
    entrada.remove(aux);
  }
  return (resultado);
}

main() {
  int N = int.parse(stdin.readLineSync()!);
  for (int c = 0; c < N; c++) {
    List<String> lista_de_compras = (stdin.readLineSync()!).split(" ");
    List<String> resultado = [];

    for (int i = 0; i < lista_de_compras.length; i++) {
      if (!resultado.contains(lista_de_compras[i]))
        resultado.add(lista_de_compras[i]);
    }

    resultado = ordemAlf(resultado);
    for (String v in resultado) {
      if (v == resultado.last)
        stdout.write(v);
      else
        stdout.write(v + ' ');
    }
    stdout.write('\n');
  }
}
