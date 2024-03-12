import 'package:sqflite/sqflite.dart';

class DBHelper{
 Future<String> getDbPath()async => await getDatabasesPath();
  Future<String> dbName()async => "${await getDbPath()}/family.db";

  // create table
// 1. open db path
// call open database fun provided by sqflite
createTable()async{
  await openDatabase(await dbName(),version:1,onCreate: (Database db, int version ){
    var createTable = "CREATE TABLE 'home' ('id' INTEGER PRIMARY KEY, 'father_name' TEXT, 'mother_name' TEXT, 'no_of_members' INTEGER ) ";
    db.execute(createTable);
  });
}
}