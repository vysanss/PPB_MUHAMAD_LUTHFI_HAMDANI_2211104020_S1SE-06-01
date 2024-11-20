import 'package:flutter/material.dart';
import 'package:prak10/helper/db_helper.dart';

class MyDatabaseView extends StatefulWidget {
  const MyDatabaseView({super.key});

  @override
  State<MyDatabaseView> createState() => _MyDatabaseViewState();
}

class _MyDatabaseViewState extends State<MyDatabaseView> {
  final DatabaseHelper dbHelper = DatabaseHelper.instance;
  List<Map<String, dynamic>> dbdata = [];
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void addData() async {
    Map<String, dynamic> row = {
      'title': _titleController.text,
      'description': _descriptionController.text
    };
    await dbHelper.insert(row);
    refreshData();
  }

  void refreshData() async {
    List<Map<String, dynamic>> data = await dbHelper.queryAllRows();
    setState(() {
      dbdata = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Database View'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _descriptionController,
            decoration: const InputDecoration(labelText: 'Description'),
          ),
          ElevatedButton(
            onPressed: addData,
            child: const Text('Add Data'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dbdata.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dbdata[index]['title']),
                  subtitle: Text(dbdata[index]['description']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
