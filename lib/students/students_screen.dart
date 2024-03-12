import 'package:flutter/material.dart';
import 'package:learn_sqflite/models/student_model.dart';
import 'package:learn_sqflite/students/students_details_screen.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Name: Muskan"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentDetailsScreen(
                                student: StudentModel(
                                    name: "name",
                                    email: "email",
                                    phone: "phone",
                                    age: 12,
                                    fatherName: "fatherName",
                                    isMale: true,
                                    motherName: "motherName").convertModelToMap(),
                              )));
                },
                child: const Text("Go Next"))
          ],
        ),
      ),
    );
  }
}
