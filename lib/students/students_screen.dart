import 'package:flutter/material.dart';
import 'package:learn_sqflite/models/student_model.dart';
import 'package:learn_sqflite/students/students_details_screen.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  var student = Student();
  @override
  Widget build(BuildContext context) {
    var studentWidgets = StudentWidgets();
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            studentWidgets.studentAddButton(context,Container()),
            studentWidgets.nameTextView("Karishma"),
            studentWidgets.studentAddButton(context,Container()),
            studentWidgets.studentAddButton(context,Container()),
            studentWidgets.nameTextView("Rani"),
            studentWidgets.nameTextView("Kajal"),
          ],
        ),
      ),
    );
  }
}

class StudentWidgets{

  Widget studentAddButton(BuildContext context,Widget nextClass){
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => nextClass));
        },
        child: const Text("Go Next"));
  }

  Widget nameTextView(String name)=>Text(name);
}


class Teacher{
  Widget myName()=>Text("Rahul raj");
}

class Student extends Teacher{
  // @override
  // Widget myName() {
  //   return Text("Ansar Ali");
  // }

  Widget writeStudentName()=> myName();
}


