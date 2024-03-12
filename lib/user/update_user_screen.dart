import 'package:flutter/material.dart';
import 'package:learn_sqflite/db/database_helper.dart';

class UpdateUserScreen extends StatefulWidget {
  final String name;
  final String email;
  final String phone;
  final String marital;
  final int id;

   const UpdateUserScreen({super.key,required this.name,required this.phone, required this.email, required this.marital, required this.id});

  @override
  State<UpdateUserScreen> createState() => _UpdateUserScreenState();
}

class _UpdateUserScreenState extends State<UpdateUserScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var maritalController = TextEditingController();

  @override
  void initState() {
    super.initState();
     nameController = TextEditingController(text: widget.name);
     emailController = TextEditingController(text: widget.email);
     phoneController = TextEditingController(text: widget.phone);
     maritalController = TextEditingController(text: widget.marital);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update User"),),
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
            ElevatedButton(onPressed: (){
              updateUserData();
              Navigator.pop(context);
            }, child: const Text("Update User"))
          ],
        ),
      ),
    );
  }

  updateUserData(){
    DataBaseHelper().updateData({
      "name":nameController.text,
      "email":emailController.text,
      "phone":phoneController.text,
      "marital_status":maritalController.text
    }, widget.id);
  }
}
