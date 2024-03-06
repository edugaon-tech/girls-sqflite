import 'package:flutter/material.dart';

import '../database_helper.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  var numbers = [2,4,5,66,7,8,9,0];
  var students = List<Map<String, Object?>>.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemCount: students.length,
              itemBuilder:(context,index){
                return Text("${students[index]['email'].toString()} ${students[index]['name'].toString()}");
              } )),
          ElevatedButton(onPressed: (){
            getAllStudents();
          }, child: const Text("Get Students"))
        ],
      ),
    );
  }

  getAllStudents()async{
    var data = await DataBaseHelper().getStudentData();
    students = data;
    setState(() {});
  }
}
