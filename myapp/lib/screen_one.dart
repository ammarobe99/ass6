import 'package:flutter/material.dart';

class Screen_one extends StatefulWidget {
  const Screen_one({super.key});

  @override
  State<Screen_one> createState() => _Screen_oneState();
}

class _Screen_oneState extends State<Screen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("hello from screen 1")),
    );
  }
}
