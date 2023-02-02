import 'package:app_widgets/changenmae_card.dart';
import 'package:app_widgets/drawer.dart';
import 'package:flutter/material.dart';

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  final TextEditingController _namecontroller = TextEditingController();
  var myText = "Welcomes";
  // String myText = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Changename_Card(myText: myText, namecontroller: _namecontroller),
        ),
      ),
      drawer: const Mydrawer(),

      // floatingActionButtonLocation:FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _namecontroller.text;
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
