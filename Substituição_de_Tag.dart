import 'dart:io';

import 'dart:svg';

main() {
  String body = stdin.readLineSync()!;
  String num = stdin.readLineSync()!;
  String tag = stdin.readLineSync()!;
  List<String> resultado = [];
  bool flag = false;

  //substitui a tag pelo numero
  for (int i = 0, j = 0; i < tag.length; i++) {
    //modifica a tag
    if (flag && tag[i].toLowerCase() == body[j].toLowerCase()) {
      List<String> igual = [];
      while (tag[i].toLowerCase() == body[j].toLowerCase()) {
        igual.add(tag[i++]);
        if (j++ == body.length - 1) break;
      }

      if (body.toLowerCase() == igual.join().toLowerCase())
        resultado.add(num);
      else
        resultado.add(igual.join());
      j = 0;
    }

    //detecta a região entre < >
    if (tag[i] == '<') flag = true;
    if (tag[i] == '>') flag = false;

    resultado.add(tag[i]);
  }

  print(resultado.join());
}
