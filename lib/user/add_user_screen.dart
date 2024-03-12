import 'package:flutter/material.dart';
import 'package:learn_sqflite/db/database_helper.dart';
import 'package:learn_sqflite/models/users_model.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var maritalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
            ),
            TextFormField(
              controller: emailController,
            ),
            TextFormField(
              controller: phoneController,
            ),
            TextFormField(
              controller: maritalController,
            ),
            ElevatedButton(onPressed: () {
              addNewUser();
              Navigator.pop(context);
            }, child: Text("Add User"))

          ],
        ),
      ),
    );
  }

  addNewUser() {
    var data = UserModel(email: emailController.text,
        maritalStatus: maritalController.text,
        name: nameController.text,
        phone: phoneController.text);
    DataBaseHelper().insertStudent(data);
  }
}
