import 'package:flutter/material.dart';
import 'package:learn_sqflite/database_helper.dart';
import 'package:learn_sqflite/models/users_model.dart';
import 'package:learn_sqflite/user/add_user_screen.dart';
import 'package:learn_sqflite/user/update_user_screen.dart';

class UserScreen extends StatefulWidget {
   UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<Map<String, Object?>> users = [{}];

  @override
  void initState() {
    if (!mounted) return;
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddUserScreen()));
        },
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, i) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(UserModel().name.toString()),
                      Text("Email: ${users[i]['email'].toString()}"),
                      Text("Phone: ${users[i]['phone'].toString()}"),
                      Text("Marital: ${users[i]['marital_status'].toString()}"),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdateUserScreen(
                                      email: users[i]['email'].toString(),
                                      marital: users[i]['marital_status']
                                          .toString(),
                                      name: users[i]['name'].toString(),
                                      phone: users[i]['phone'].toString(),
                                      id: int.parse(
                                          users[i]['id'].toString()),
                                    )));
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {
                        DataBaseHelper().deleteRow(int.parse(
                            users[i]['id'].toString()));
                        setState(() {});
                        getUserData();

                      }, icon: Icon(Icons.delete)),
                    ],
                  )
                ],
              ),
            );
          }), onRefresh: (){
        return getUserData();
      }),
    );
  }

  getUserData() async {
    List<Map<String, Object?>> data = await DataBaseHelper().getStudentData();
    users = data;
    setState(() {});
  }


}
