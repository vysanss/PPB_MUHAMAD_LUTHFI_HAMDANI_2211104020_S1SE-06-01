void main() {
  //1. buatkan algoritma
  //a.menghitung rerata dari IP
  //b.Menjumlahkan berapa banyak mahasiswa yang sudah nikah
  //2. Masing-masing dari poin 1.a dan 1.b diimplementasikan dalam code program

  // 1. buatkan algoritma untuk
  Map<String, dynamic> mahasiswa = {
    // - menghitung rata2 dari ipk
    "Nama": ["Gideon", "Wahyu", "Luthfi", "Fauzan", "Dhafin", "Zaki"],
    "IPK": [4, 3.89, 3.95, 2.99, 3.92, 2.35],
    "Status": [
      "belum menikah",
      "sudah menikah",
      "sudah menikah",
      "belum menikah",
      "belum menikah",
      "sudah menikah"
    ]
  };
  double total_ipk = 0;
  for (var values in mahasiswa["IPK"]) {
    total_ipk += values;
  }
  ;
  double avg_ipk = total_ipk / mahasiswa["IPK"].length;
  print("Rata-rata IPK: $avg_ipk");

  // - menjumlahan berapa banyak mahasiswa yang sudah nikah
  int jumlahBelumMenikah = 0;
  int jumlahSudahMenikah = 0;
  List namaSudahMenikah = [];
  List namaBelumMenikah = [];
  for (int i = 0; i < mahasiswa["Status"].length; i++) {
    if (mahasiswa["Status"]![i] == "belum menikah") {
      jumlahBelumMenikah += 1;
      namaBelumMenikah.add(mahasiswa["Nama"]![i]);
    } else if (mahasiswa["Status"]![i] == "sudah menikah") {
      jumlahSudahMenikah += 1;
      namaSudahMenikah.add(mahasiswa["Nama"]![i]);
    } else {
      print("Terdapat kesalahan");
    }
    ;
  }
  ;
  String gabunganGabunganSudahMenikah = namaSudahMenikah.join(", ");
  String gabunganGabunganBelumMenikah = namaBelumMenikah.join(", ");
  print("Jumlah mahasiswa belum menikah: $jumlahBelumMenikah");
  print("Daftar nama mahasiswa belum menikah: $gabunganGabunganBelumMenikah");
  print("Jumlah mahasiswa sudah menikah: $jumlahSudahMenikah");
  print("Daftar nama mahasiswa sudah menikah: $gabunganGabunganSudahMenikah");
  // 2. masing2 dari point2 1a dan 1b diimplementasikan dalam kodingan
}
