import 'package:flutter/material.dart';

import '../models/student_model.dart';

class StudentDetailsScreen extends StatefulWidget {
  // String name;
  // String phone;
  // int age;

  final Map<String, dynamic> student;
  const StudentDetailsScreen(
      {super.key, required this.student});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var a = StudentModel.convertMapToModel(widget.student);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(a.name),
            Text(a.phone),
            Text(a.age.toString())
          ],
        ),
      ),
    );
  }
}
