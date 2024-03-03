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
  var studentKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
      ),
      body: Form(
          key: studentKey,
          child: Column(
            children: [
              myTextField(nameController, "Name",validatorText: "Name is required"),
              myTextField(emailController, "Email",validatorText: "Please enter your email"),
              myTextField(phoneController, "Phone",
                  keyType: TextInputType.number, maxLength: 10,validatorText: "Enter a valid phone"),
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
                    if(studentKey.currentState!.validate()){
                      databaseHelper.insertStudent(
                          nameController.text,
                          emailController.text,
                          phoneController.text,
                          marriageValue);
                    }
                  },
                  child: const Text("Add Students")),
              ElevatedButton(
                  onPressed: () {
                   databaseHelper.getStudentData();
                  },
                  child: const Text("Get Students"))
            ],
          )),
    );
  }

  Widget myTextField(TextEditingController controller, String hintText,
      {TextInputType keyType = TextInputType.text, int? maxLength,String? validatorText}) {
    return TextFormField(
      controller: controller,
      keyboardType: keyType,
      maxLength: maxLength,
      validator: (text) {
        if (text?.isEmpty == true) {
          return validatorText;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(hintText: hintText,counterText:""),
    );
  }
}
