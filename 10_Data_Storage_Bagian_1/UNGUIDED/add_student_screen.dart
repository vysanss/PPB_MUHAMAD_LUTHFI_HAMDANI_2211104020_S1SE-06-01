import 'package:flutter/material.dart';
import '../database/database_helper.dart';
import '../models/student.dart';

class AddStudentScreen extends StatefulWidget {
  @override
  _AddStudentScreenState createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _hobbyController = TextEditingController();

  Future<void> _saveStudent() async {
    if (_formKey.currentState!.validate()) {
      final student = Student(
        name: _nameController.text,
        nim: _nimController.text,
        address: _addressController.text,
        hobby: _hobbyController.text,
      );
      // Simpan data ke database
      await DatabaseHelper.instance.addStudent(student);

      // Kembali ke halaman sebelumnya setelah data tersimpan
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Biodata Mahasiswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nama'),
                validator: (value) =>
                    value!.isEmpty ? 'Nama wajib diisi' : null,
              ),
              TextFormField(
                controller: _nimController,
                decoration: InputDecoration(labelText: 'NIM'),
                validator: (value) => value!.isEmpty ? 'NIM wajib diisi' : null,
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Alamat'),
                validator: (value) =>
                    value!.isEmpty ? 'Alamat wajib diisi' : null,
              ),
              TextFormField(
                controller: _hobbyController,
                decoration: InputDecoration(labelText: 'Hobi'),
                validator: (value) =>
                    value!.isEmpty ? 'Hobi wajib diisi' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveStudent,
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
