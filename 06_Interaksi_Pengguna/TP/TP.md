# Cover #
<div align="center">
TUGAS PENDAHULUAN<br>
PEMROGRAMAN PERANGKAT BERGERAK <br>
<br>
MODUL VI <br>
INTERAKSI PENGGUNA<br>

<img src="https://lac.telkomuniversity.ac.id/wp-content/uploads/2021/01/cropped-1200px-Telkom_University_Logo.svg-270x270.png" width="250px">

<br>

Disusun Oleh: <br>
Muhamad Luthfi Hamdani/2211104021 <br>
SE-06-01 <br>

<br>

Asisten Praktikum : <br>
Muhammad Faza Zulian Gesit Al Barru <br>
Aisyah Hasna Aulia <br>

<br>

Dosen Pengampu : <br>
Yudha Islami Sulistya, S.Kom., M.Cs <br>

<br>

PROGRAM STUDI S1 REKAYASSA PERANGKAT LUNAK <br>
FAKULTAS INFORMATIKA <br> 
TELKOM UNIVERSITY PURWOKERTO <br>

</div>

# Soal Nomor 1

## Source Code:
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
      title: 'Praktikum 6',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 143, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Latihan Bottom Navigation Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Ini Halaman Beranda',
      style: optionStyle,
    ),
    Text(
      'Ini Halaman Wisata',
      style: optionStyle,
    ),
    Text(
      'Ini Halaman Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Wisata",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 143, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}
```
## Screenshot Output: <br>


## Deskripsi
Aplikasi sederhana ini dibuat dengan tiga halaman utama: Home, Wisata, dan Profile, yang bisa dipilih menggunakan bottom navigation bar di bagian bawah layar. Ketika aplikasi dibuka, halaman Home muncul sebagai halaman awal. Pengguna bisa berpindah halaman dengan mengetuk ikon di navigation bar tersebut. Misalnya, jika pengguna mengetuk ikon "Wisata", halaman akan berubah untuk menampilkan teks "Ini Halaman Wisata".