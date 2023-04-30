main() {
  List<String> nomes = [
    'arara',
    'coelho',
    'PIPpip',
    'SORVETEETEVROS',
    'arvore'
  ];

  Iterable<String> mapeamento = nomes.map(eh_Palindromo);
  for (String value in mapeamento) {
    print(value);
  }

  print(nomes.firstWhere((entrada) =>
      entrada.toUpperCase() == eh_Palindromo(entrada).toUpperCase()));
}

String eh_Palindromo(String entrada) {
  int aux = 0;
  for (int i = 0; i < entrada.length ~/ 2; i++) {
    if (entrada[i].toUpperCase() ==
        entrada[entrada.length - i - 1].toUpperCase()) {
      aux++;
      if (aux == entrada.length ~/ 2) return entrada;
    } else
      break;
  }
  return 'não é palindromo';
}
