import 'package:flutter/material.dart';
import 'package:learn_sqflite/screens/test_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
// @override
// State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    print("this is init State");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("this is didChangeDependencies");
    super.didChangeDependencies();
  }

  var icon = Icons.abc_rounded;

  @override
  Widget build(BuildContext context) {
    print("build");
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    icon = Icons.add;
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                child: Text("Next ddd"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    icon = Icons.add;
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                child: Text("Next ddd"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    icon = Icons.add;
                  });
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomeScreen()));
                },
                child: Text("Next ddd"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    icon = Icons.add;
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                child: Text("Next ddd"),
              ),
            ),
            Icon(icon)
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    print("setState");
    super.setState(fn);
  }

  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void activate() {
    print("object");
    super.activate();
  }
}
