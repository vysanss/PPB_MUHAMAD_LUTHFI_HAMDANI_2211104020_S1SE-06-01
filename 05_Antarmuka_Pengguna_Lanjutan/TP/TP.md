<div style="text-align: center;">

#### TUGAS PENDAHULUAN  
#### PEMROGRAMAN PERANGKAT BERGERAK  
#### MODUL V  
#### ANTARMUKA PENGGUNA LANJUTAN

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

## Source code :
```
import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recommended Tourist Places'),
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
  final List<Map<String, String>> places = [
    {
      'name': 'Eiffel Tower',
      'location':
          'Menara Eiffel sebelumnya bernama Menara Paris merupakan sebuah menara besi yang dibangun di Champ de Mars di tepi Sungai Seine, Paris. Menara ini telah menjadi ikon utama negara Prancis dan salah satu struktur paling terkenal di dunia.',
      'image': 'assets/images/paris.jpg',
    },
    {
      'name': 'Great Wall of China',
      'location':
          'Tembok Besar Tiongkok atau Tembok Raksasa Tiongkok juga dikenal di Tiongkok dengan nama Tembok Sepanjang 10.000 Li¹ adalah bangunan terpanjang yang pernah diciptakan manusia yang berada di Tiongkok.',
      'image': 'assets/images/china.jpg',
    },
    {
      'name': 'Machu Picchu',
      'location':
          'Machu Picchu (bahasa Quechua Machu Pikchu, "Gunung Tua";[2] sering juga disebut "Kota Inca yang hilang") adalah sebuah lokasi reruntuhan Inca pra-Columbus yang terletak di wilayah pegunungan.',
      'image': 'assets/images/peru.jpg',
    },
    {
      'name': 'Grand Canyon',
      'location':
          'Grand Canyon, secara harfiah berarti Ngarai Besar, adalah sebuah lembah tebing-terjal, terbentuk oleh Sungai Colorado.',
      'image': 'assets/images/usa.jpeg',
    },
    {
      'name': 'Colosseum',
      'location':
          'Koloseum adalah peninggalan bersejarah berupa arena gladiator, dibangun oleh Vespasian.',
      'image': 'assets/images/italy.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: places.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                // Displaying image from assets
                Image.asset(
                  places[index]['image']!,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  title: Text(places[index]['name']!),
                  subtitle: Text(places[index]['location']!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

```

## Output :

![image](https://github.com/user-attachments/assets/d3481c63-03d2-422e-aeef-81261892aa89)
