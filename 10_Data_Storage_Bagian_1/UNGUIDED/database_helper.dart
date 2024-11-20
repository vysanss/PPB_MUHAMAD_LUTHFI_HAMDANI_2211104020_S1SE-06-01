import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/student.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('students.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    const tableStudent = '''
      CREATE TABLE students (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        nim TEXT NOT NULL,
        address TEXT NOT NULL,
        hobby TEXT NOT NULL
      )
    ''';
    await db.execute(tableStudent);
  }

  Future<int> addStudent(Student student) async {
    final db = await instance.database;
    return await db.insert('students', student.toMap());
  }

  Future<List<Student>> getStudents() async {
    final db = await instance.database;
    final result = await db.query('students');
    return result.map((map) => Student.fromMap(map)).toList();
  }
}
