import 'package:flutter/material.dart';
import 'package:learn_sqflite/students/students_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: StudentScreen(),
    );
  }
}

class LearnSqfScreen extends StatefulWidget {
  const LearnSqfScreen({super.key});

  @override
  State<LearnSqfScreen> createState() => _LearnSqfScreenState();
}

class _LearnSqfScreenState extends State<LearnSqfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myYText("Rani", Colors.red),
          myYText("Pani", Colors.black87),
          myYText("puri", Colors.yellowAccent),
          myIcons(),
          myIcons(),
          myIcons(),
          myIcons(),
          ElevatedButton(
              onPressed: () {
                addTwoValue();
                // mulTwoValue(100, 5);
                // DataBaseHelper().insertData();
              },
              child: Text("data")),
          ElevatedButton(
              onPressed: () {
                mulTwoValue(100, 5);
              },
              child: const Text("Mul")),
          Text(add.toString()),
          Text(mul.toString()),
        ],
      ),
    );
  }

  // return type with parameter

  Text myYText(String text, Color textColor) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
    );
  }

  // return-type with no parameter

  Icon myIcons() {
    return const Icon(
      Icons.add,
      color: Colors.red,
    );
  }

  // no rerun with no parameter
  var add = 0;

  addTwoValue() {
    var a = 10;
    var b = 30;
    add = a + b;
    setState(() {});
  }

  // no with parameter

  var mul = 0;

  mulTwoValue(int a, int b) {
    mul = a * b;
    setState(() {

    });
  }
}


