import 'dart:io';
import 'dart:math';

main() {
  var line = stdin.readLineSync();
  int p1 = -1, p2 = -1, i;

  if (line != null) {
    for (i = 0; i < line.length; i++) {
      if (line[i] == ' ' && p1 != -1) {
        p2 = i;
        break;
      }
      if (line[i] == ' ' && p1 == -1) p1 = i;
    }
    double a = double.parse(line.substring(0, p1));
    double b = double.parse(line.substring(p1, p2));
    double c = double.parse(line.substring(p2, line.length));

    double delta = pow(b, 2) - 4 * a * c;
    if (delta < 0 || a == 0) {
      print('Impossivel calcular');
      exit(1);
    }

    delta = sqrt(delta);
    double R1, R2;
    R1 = (delta - b) / (2 * a);
    R2 = -1 * (delta + b) / (2 * a);
    print('R1 = ' + R1.toStringAsFixed(5));
    print("R2 = " + R2.toStringAsFixed(5));
  }
}
