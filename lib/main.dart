import 'package:app_widgets/Json_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter App",
    home: const JsonData(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
