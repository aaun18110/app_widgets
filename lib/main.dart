// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: ("Flutter App"),
    home: Bar(),
  ));
}

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        color: Color.fromARGB(255, 9, 255, 0),
        child: Center(child: Text("Flutter Doctor")),
      ),
    );
  }
}
