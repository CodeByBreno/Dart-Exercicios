import 'dart:io';

main() {
  Map<String, String> feliznatal = {
    'brasil': 'Feliz Natal!',
    'alemanha': 'Frohliche Weihnachten!',
    'austria': 'Frohe Weihnacht!',
    'coreia': 'Chuk Sung Tan!',
    'espanha': 'Feliz Navidad!',
    'grecia': 'Kala Christougena!',
    'estados-unidos': 'Merry Christmas!',
    'inglaterra': 'Merry Christmas!',
    'australia': 'Merry Christmas!',
    'portugal': 'Feliz Natal!',
    'suecia': 'God Jul!',
    'turquia': 'Mutlu Noeller',
    'argentina': 'Feliz Navidad!',
    'chile': 'Feliz Navidad!',
    'mexico': 'Feliz Navidad!',
    'antardida': 'Merry Christmas!',
    'canada': 'Merry Christmas!',
    'irlanda': 'Nollaig Shona Dhuit!',
    'belgica': 'Zalig Kerstfeest!',
    'italia': 'Buon Natale!',
    'libia': 'Buon Natale!',
    'siria': 'Milad Mubarak!',
    'marrocos': 'Milad Mubarak!',
    'japao': 'Merii Kurisumasu!'
  };
  List<String> entrada = File('entrada.txt').readAsLinesSync();
  File saida = new File('saida.txt');
  saida.writeAsStringSync('');

  for (int i = 0; i < entrada.length; i++) {
    if (feliznatal.containsKey(entrada[i])) {
      saida.writeAsStringSync(feliznatal[entrada[i]]! + '\n',
          mode: FileMode.append);
    } else {
      saida.writeAsStringSync("--- NOT FOUND ---\n", mode: FileMode.append);
    }
  }
}
