<div style="text-align: center;">

#### TUGAS PENDAHULUAN  
#### PEMROGRAMAN PERANGKAT BERGERAK  
#### MODUL IV  
#### ANTARMUKA PENGGUNA  

![pngwing com (7)](https://github.com/user-attachments/assets/b82829d5-d503-46ec-8a90-c3839a70c6b8)

**Disusun Oleh:**  
**Muhamad Luthfi Hamdani / 2211104020**  
**SE-06-01**  

**Asisten Praktikum:**  
Muhammad Faza Zulian Gesit Al Barru  
Aisyah Hasna Aulia  

**Dosen Pengampu:**  
Yudha Islami Sulistya, S.Kom., M.Cs.  


**PROGRAM STUDI S1 SOFTWARE ENGINEERING**  
**FAKULTAS INFORMATIKA**  
**TELKOM UNIVERSITY PURWOKERTO**  
**2024**

</div>

---

# TUGAS PENDAHULUAN
## A. SOAL NOMOR 1
Buatlah tampilan aplikasi sederhana dalam flutter yang menampilkan deskripsi rekomendasi tempat wisata dengan mengimplementasikan widget dasar
Detail Tugas:
• AppBar: Buatlah sebuah AppBar dengan judul "Rekomendasi Wisata".
• Text: Di tengah layar, tambahkan widget Text dengan pesan "Nama Tempat Wisata".
• Image: Tambahkan gambar dari internet di bawah teks tersebut menggunakan widget Image.network.
• Text: Dibawah gambar, tambahkan deskripsi dari tempat wisata
• Button: Tambahkan tombol di bawah gambar dengan label "Kunjungi Tempat".

## Contoh Output

![image](https://github.com/user-attachments/assets/78d2c84a-0d88-4ccf-9fb1-59e724f87fa7)

---

## Source code :

```

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 97, 61, 176)),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Rekomendasi Wisata',
        ),
); }
}
class MyHomePage extends StatefulWidget {
const MyHomePage({super.key, required this.title}); final String title;
@override
State<MyHomePage> createState() => _MyHomePageState(); }
class _MyHomePageState extends State<MyHomePage> { @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            const Text(
              "Baturaden",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Image.network(
'https://cdn.paradisotour.co.id/wp- content/uploads/2024/09/Cagar-Alam-Baturaden.jpg',
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
   
 child: Text(
"Baturaden adalah sebuah objek wisata alam yang
terletak di lereng Gunung Slamet, sekitar 15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas, Jawa Tengah. Terkenal dengan pemandangan alamnya yang indah dan udara yang sejuk, Baturaden menjadi destinasi favorit wisatawan lokal maupun mancanegara.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
), ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
child: const Text('Kunjungi Sekarang'), ),
], ),
), );
} }
  

```

## Output :


![image](https://github.com/user-attachments/assets/04789272-116e-400c-9f4e-52ecb4dde42a)

### Deskripsi Program
Aplikasi flutter diatas akan menjalankan MyApp, MyApp adalah stateless widget yang mengonfigurasi MaterialApp dengan Material 3, lalu widget MyHomePage adalah statefull widget yang berisi judul, lalu di Scaffold, ada AppBar dengan judul posisi ditengah, lalu body terdapat widget Center yang membuat konten berada di tengah secara vertical menggunakan Column, di sini ada sebuah teks “Baturaden”, sebuah gambar, deskripsi wisata, dan tombol “Kunjungi Sekarang”.


