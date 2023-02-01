import 'package:app_widgets/Json_data.dart';
import 'package:app_widgets/Utils/Contants.dart';
import 'package:app_widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter App",
    home: Constants.prefs?.getBool("loggedIn") == true
        ? const JsonData()
        : const Login(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/login": (context) => const Login(),
      "/Json_datas": (context) => const JsonData(),
    },
  ));
}
