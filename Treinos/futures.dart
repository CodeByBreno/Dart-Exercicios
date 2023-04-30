import 'dart:io';

Future<void> fetchUserOrder() {
  int C = int.parse(stdin.readLineSync()!);
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
  int A = 5;
  int B = int.parse(stdin.readLineSync()!);
  print(A + B);
  B = int.parse(stdin.readLineSync()!);
  print(A + B);
}
