import 'package:flutter/material.dart';

import 'home_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: '',)));
      }, child: Text("add")),
    );
  }

}
