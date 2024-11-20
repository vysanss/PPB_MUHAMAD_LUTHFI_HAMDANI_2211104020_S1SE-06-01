import 'package:flutter/material.dart';
import 'add_student_screen.dart';
import '../database/database_helper.dart';
import '../models/student.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Student> students = [];

  @override
  void initState() {
    super.initState();
    _fetchStudents();
  }

  Future<void> _fetchStudents() async {
    final data = await DatabaseHelper.instance.getStudents();
    setState(() {
      students = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SQLite Biodata Mahasiswa')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text(student.name),
            subtitle: Text('NIM: ${student.nim}, Hobi: ${student.hobby}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddStudentScreen()),
          );
          _fetchStudents();
        },
      ),
    );
  }
}
