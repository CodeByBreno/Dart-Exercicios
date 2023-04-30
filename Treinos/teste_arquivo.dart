import 'dart:io';

main() {
  File f = new File('abracadabra.txt');
  for (String v in f.readAsLinesSync()) {
    print(v);
  }
}
