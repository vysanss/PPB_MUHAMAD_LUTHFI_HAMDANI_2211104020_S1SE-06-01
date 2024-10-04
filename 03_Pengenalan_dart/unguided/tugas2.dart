import 'dart:io';

void printPyramid(int height) {
  for (int i = 1; i <= height; i++) {
    // Print spaces
    for (int j = 0; j < height - i; j++) {
      stdout.write(' ');
    }
    // Print stars
    for (int k = 0; k < (2 * i - 1); k++) {
      stdout.write('*');
    }
    // Move to the next line
    print('');
  }
}

void main() {
  stdout.write('Masukkan tinggi piramida: ');
  int? height = int.tryParse(stdin.readLineSync()!);

  if (height != null && height > 0) {
    printPyramid(height);
  } else {
    print('Input tidak valid');
  }
}