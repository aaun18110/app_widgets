// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      body: Center(
        child: Container(
          // padding: EdgeInsets.all(10),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.yellow]),
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(221, 128, 128, 128),
                    blurRadius: 5,
                    spreadRadius: 5,
                    offset: Offset(3.0, 5.0))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Flutter Dev",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
