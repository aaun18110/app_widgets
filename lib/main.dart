// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Drawer App",
    home: Bar(),
    theme: ThemeData(primarySwatch: Colors.purple),
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
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Aun ALi"),
              accountEmail: Text("aunali123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/08/04/10/23/man-3583424_1280.jpg"),
              ),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Gmail"),
              subtitle: Text("aunali123@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              subtitle: Text("Account Setting"),
              trailing: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation:FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
