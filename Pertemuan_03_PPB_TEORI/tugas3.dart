import 'dart:math';

// 1. Fungsi Membuat Matriks AxB dan Transpose-nya
void buatMatriks(int A, int B) {
  // Membuat matriks A x B dengan nilai random antara 1-10
  List<List<int>> matriks = List.generate(
      A, (_) => List.generate(B, (_) => Random().nextInt(10) + 1));

  // Output matriks asli
  print('Matriks $A x $B:');
  for (var row in matriks) {
    print(row.join(' '));
  }

  // Membuat transpose dari matriks
  List<List<int>> transpose =
      List.generate(B, (i) => List.generate(A, (j) => matriks[j][i]));

  // Output matriks transpose
  print('Matriks Transpose:');
  for (var row in transpose) {
    print(row.join(' '));
  }
}

// 2. Fungsi Mencari Nilai dalam List 2 Dimensi
void cariDalamList(int bilangan) {
  // Membuat list 2D sesuai ketentuan soal
  List<List<int>> list2D = [
    [5, 10, 15], // Baris 1: Kelipatan 5
    [2, 4, 6, 8], // Baris 2: Bilangan genap
    [1, 4, 9, 16, 25], // Baris 3: Bilangan kuadrat
    [3, 4, 5, 6, 7, 8], // Baris 4: Bilangan asli
  ];

  // Output isi list
  print('Isi List:');
  for (var row in list2D) {
    print(row.join(' '));
  }

  // Mencari bilangan dalam list
  print('\nBilangan yang dicari: $bilangan');
  bool found = false;

  for (int i = 0; i < list2D.length; i++) {
    for (int j = 0; j < list2D[i].length; j++) {
      if (list2D[i][j] == bilangan) {
        print('Bilangan $bilangan berada di: baris ${i + 1}, kolom ${j + 1}');
        found = true;
      }
    }
  }

  if (!found) {
    print('Bilangan $bilangan tidak ditemukan dalam list.');
  }
}

// 3. Fungsi Mencari KPK dari Dua Bilangan
int hitungKPK(int a, int b) {
  // Fungsi untuk mencari FPB
  int fpb(int x, int y) {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }

  // Rumus KPK: (a * b) / FPB(a, b)
  return (a * b) ~/ fpb(a, b);
}

void main() {
  // Menjalankan fungsi buatMatriks
  print('=== Membuat Matriks dan Transpose ===');
  buatMatriks(3, 2); // Contoh input: A=3, B=2

  // Menjalankan fungsi cariDalamList
  print('\n=== Mencari Nilai dalam List 2D ===');
  cariDalamList(5); // Contoh input bilangan yang dicari

  // Menjalankan fungsi hitungKPK
  print('\n=== Menghitung KPK dari Dua Bilangan ===');
  int bil1 = 12;
  int bil2 = 8;
  int kpk = hitungKPK(bil1, bil2);
  print('KPK dari $bil1 dan $bil2 = $kpk'); // Contoh output KPK
}
