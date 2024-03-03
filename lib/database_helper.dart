import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  Future<String> createDatabase() async {
    // get you storage path
    var path = await getDatabasesPath();
    // create your database
    var database = "$path/users.db";
    // return database
    return database;
  }

  Future<Database> createTables() async {
    var dbase = await createDatabase();
    return await openDatabase(dbase, version: 1,
        onCreate: (Database db, int version) async {
      // create table//
      var tableQuery =
          "CREATE TABLE 'students' ('id' INTEGER PRIMARY KEY,'name' TEXT, 'email' TEXT, 'phone' TEXT, 'marital_status' TEXT ) ";
      await db.execute(tableQuery);
    });
  }

  insertStudent(
      String name, String email, String phone, String maritalStatus) async {
    var db = await createTables();
    await db.insert("students", {
      'name': name,
      "email": email,
      'phone': phone,
      'marital_status': maritalStatus
    });
  }

  getStudentData()async{
    var db = await createTables();
    var data = await db.query("students");
    print(data);
  }
}
