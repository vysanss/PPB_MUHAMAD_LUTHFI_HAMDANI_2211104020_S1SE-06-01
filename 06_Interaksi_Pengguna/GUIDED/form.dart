import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue), // Warna border
                borderRadius: BorderRadius.circular(12), // Radius border
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none, // Menghilangkan border default
                  hintText: 'Masukkan Nama',
                  contentPadding: EdgeInsets.all(16), // Padding di dalam TextField
                ),
              ),
            ),
            SizedBox(height: 16), // Jarak antar field
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue), // Warna border
                borderRadius: BorderRadius.circular(12), // Radius border
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Masukkan Email',
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
