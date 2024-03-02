import 'package:flutter/material.dart';

import 'database_helper.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String marriageValue = '';

  var databaseHelper = DataBaseHelper();

  // TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
      ),
      body: Column(
        children: [
          myTextField(nameController, "Name"),
          myTextField(emailController, "Email"),
          myTextField(phoneController, "Phone", keyType: TextInputType.number),
          DropdownButtonFormField(
              items: ["Married", "Unmarried"]
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  marriageValue = value!;
                });
              }),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                databaseHelper.insertStudent(nameController.text,
                    emailController.text, phoneController.text, marriageValue);
              },
              child: const Text("Add Students"))
        ],
      ),
    );
  }

  Widget myTextField(TextEditingController controller, String hintText,
      {TextInputType keyType = TextInputType.text}) {
    return TextFormField(
      controller: controller,
      keyboardType: keyType,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
