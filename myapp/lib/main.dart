import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen_one.dart';
import 'package:myapp/screen_three.dart';
import 'package:myapp/screen_two.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen_one();
                  }));
                });
              }),
              child: Text(
                "go to screen 1",
                style: TextStyle(fontSize: 30),
              )),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen_two();
                  }));
                });
              }),
              child: Text(
                "go to screen 2",
                style: TextStyle(fontSize: 30),
              )),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen_three();
                  }));
                });
              }),
              child: Text(
                "go to screen 3",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
