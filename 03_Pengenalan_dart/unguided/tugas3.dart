import 'dart:io';
import 'dart:math';

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= sqrt(number).toInt(); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  stdout.write('Masukkan bilangan bulat: ');
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number != null) {
    if (isPrime(number)) {
      print('$number adalah bilangan prima');
    } else {
      print('$number bukan bilangan prima');
    }
  } else {
    print('Input tidak valid');
  }
}