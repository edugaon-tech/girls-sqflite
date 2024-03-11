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

  Future<Database> initDatabase() async {
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
    var db = await initDatabase();
    await db.insert("students", {
      'name': name,
      "email": email,
      'phone': phone,
      'marital_status': maritalStatus
    });
  }

  // get entire table's data
  Future<List<Map<String, Object?>>> getStudentData()async{
    var db = await initDatabase();
    return await db.query("students");
  }

  // get data based on columns
  Future<List<Map<String, Object?>>> getColumnData()async{
    var db = await initDatabase();
    return await db.query("students",columns:['name','email'] );
  }

  // get data based on row
  Future<List<Map<String, Object?>>> getRowData(int id)async{
    var db = await initDatabase();
     return await db.query("students",where: 'id = ?',whereArgs:[10] );
  }
// update data in the table
  updateData(Map<String, Object?> data,int id)async{
    var db = await initDatabase();
    await db.update("students",data ,where: "id =?",whereArgs:[id]);
  }

  deleteRow(int id)async{
    var db = await initDatabase();
    await db.delete("students",where: "id = ?",whereArgs:[id]);
  }

}
