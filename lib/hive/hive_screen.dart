import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({super.key});

  @override
  State<HiveScreen> createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            HiveHelper().addData();
          }, child: Text("Add")),
        ],
      ),
    );
  }

}

class HiveHelper{
  // var students = Hive.box("students");

  addData()async{
    await Hive.openBox("students");
    await Hive.openBox("employee");
    // get students
    var b = Hive.box("students");
    await b.put("address", [{"vill":"Chandpura","post":841218}]);
    var d = b.get("address");
   // var c = a.add("ansar");
   print(d);
   var f = Hive.box("employee");
   var g = f.put("name", "Hello");
   var h = f.get("name");
   print(h);
  }
}
