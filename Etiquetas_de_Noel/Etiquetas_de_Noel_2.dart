import 'dart:io';

main() {
  int i;
  Map<String, String> traducao = {};
  File entrada = new File('entrada_Etiquetas.txt');
  File saida = new File('resultado_Etiquetas.txt');
  saida.writeAsStringSync('');

  List<String> linhas = entrada.readAsLinesSync();

  int A = int.parse(linhas[0]);
  //lê os idiomas e traduções
  for (i = 1; i < 1 + 2 * A; i += 2) {
    traducao[linhas[i]] = linhas[i + 1];
  }

  //lê o nome das crianças e seus paises
  A = int.parse(linhas[i]);
  for (i = i + 1; i < linhas.length; i += 2) {
    String nome = linhas[i];
    String pais = linhas[i + 1];
    saida.writeAsStringSync(nome + '\n', mode: FileMode.append);
    saida.writeAsStringSync(traducao[pais].toString() + '\n\n',
        mode: FileMode.append);
  }
}
