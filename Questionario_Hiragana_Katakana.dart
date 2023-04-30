import 'dart:io';
import 'dart:math';

main() {
  List<List<String>> tabela = [
    ['あ', 'a'],
    ['い', 'i'],
    ['う', 'u'],
    ['え', 'e'],
    ['お', 'o'],
    ['か', 'ka'],
    ['き', 'ki'],
    ['く', 'ku'],
    ['け', 'ke'],
    ['こ', 'ko'],
    ['さ', 'sa'],
    ['し', 'shi'],
    ['す', 'su'],
    ['せ', 'se'],
    ['そ', 'so'],
    ['た', 'ta'],
    ['ち', 'chi'],
    ['つ', 'tsu'],
    ['て', 'te'],
    ['と', 'to'],
    ['な', 'na'],
    ['に', 'ni'],
    ['ぬ', 'nu'],
    ['ね', 'ne'],
    ['の', 'no'],
    ['は', 'ha'],
    ['ひ', 'hi'],
    ['ふ', 'fu'],
    ['へ', 'he'],
    ['ほ', 'ho'],
    ['ま', 'ma'],
    ['み', 'mi'],
    ['む', 'mu'],
    ['め', 'me'],
    ['も', 'mo'],
    ['ら', 'ra'],
    ['り', 'ri'],
    ['る', 'ru'],
    ['れ', 're'],
    ['ろ', 'ro'],
    ['や', 'ya'],
    ['ゆ', 'yu'],
    ['よ', 'yo'],
    ['わ', 'wa'],
    ['を', 'wo'],
    ['ん', 'n'],
  ];
  int i = 0;
  print("Para finalizar, digite '0'");
  while (true) {
    var random = Random();
    int v =
        random.nextInt(46); //gera um valor aleatório para selecionar o hiragana

    stdout.write("Digite o som de - " + tabela[v][0].toString() + " - : ");
    String? resposta = stdin.readLineSync();

    if (resposta == '0') break;
    i++;
    if (resposta == tabela[v][1].toString())
      print("Correto============================");
    else
      print("Errado!............................");
  }
  print("Você respondeu " + i.toString() + " perguntas!");
}
