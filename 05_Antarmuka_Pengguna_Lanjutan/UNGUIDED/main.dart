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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 254, 0, 216),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tempat Wisata di Banyumas'),
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
  final List<Map<String, String>> wisataList = [
    {
      'image': 'assets/images/baturraden.jpeg',
      'title': 'Baturraden',
      'description':
          'Taman rekreasi di lereng gunung dengan mata air panas, air terjun, kolam renang alami & arena bermain.',
    },
    {
      'image': 'assets/images/bukit.jpg',
      'title': 'Bukit Tranggulasih',
      'description':
          'Bukit Tranggulasih merupakan tempat wisata alam dengan pemandangan lereng Gunung Slamet.',
    },
    {
      'image': 'assets/images/curug.jpg',
      'title': 'Curug Jenggala',
      'description':
          'Curug Jenggala adalah air terjun yang berlokasi di Ketenger, Baturaden, Banyumas. Air terjun ini memiliki ketinggian 30 meter dari permukaan tanah.',
    },
    {
      'image': 'assets/images/pilej.jpeg',
      'title': 'the village purwokerto',
      'description':
          'Taman bergaya Eropa yang memiliki taman, danau dengan perahu dayung, kelinci, taman bermain & pujasera.',
    },
    {
      'image': 'assets/images/sword.jpg',
      'title': 'New Small World',
      'description':
          'Area hijau indah dengan replika bangunan terkenal & patung-patung dari seluruh dunia.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Rekomendasi Wisata di Banyumas',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 225, 109, 202),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 250,
                  margin: const EdgeInsets.only(bottom: 10),
                  color: const Color.fromARGB(255, 225, 109, 202),
                  child: Column(
                    children: [
                      Image.asset(
                        wisataList[index]['image']!,
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        wisataList[index]['title']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        wisataList[index]['description']!,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Info Lebih Lanjut'),
                      ),
                    ],
                  ),
                );
              },
              childCount: wisataList.length,
            ),
          ),
        ],
      ),
    );
  }
}
