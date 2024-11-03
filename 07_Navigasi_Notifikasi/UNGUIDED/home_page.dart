import 'package:flutter/material.dart';
import 'product.dart';
import 'product_detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Moka Pot',
      description:
          'Moka Pot merupakan alat pembuat kopi ciri khas Italy. Moka pot sendiri mengunakan teknik vacuum, air yang berada di bawah akan menguap ke bagian atas saat mendidih. Moka Pot, inilah alat seduh kopi yang luar biasa unik dengan harga yang terjangkau. Saat ini Moka Pot merupakan alat seduh yang sangat populer.',
      price: 500.000,
      imageUrl: 'assets/images/moka.jpg',
    ),
    Product(
      id: '2',
      title: 'Vietnam Drip',
      description:
          'phin filter/dripper (alat penyaring kopi khas Vietnam), cangkir atau gelas, dan sendok.',
      price: 150.000,
      imageUrl: 'assets/images/vnam.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailPage(product: products[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150, // Tinggi tetap untuk gambar
                    width: double.infinity, // Lebar mengikuti lebar kolom
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        products[index].imageUrl,
                        fit: BoxFit.cover, // Menyesuaikan gambar agar sesuai
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(products[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text('Rp.${products[index].price.toStringAsFixed(3)}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
