// ignore_for_file: file_names, prefer_typing_uninitialized_variables
import 'package:app_widgets/Utils/Contants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JsonData extends StatefulWidget {
  const JsonData({super.key});

  @override
  State<JsonData> createState() => _JsonDataState();
}

class _JsonDataState extends State<JsonData> {
  final TextEditingController jsonsdata = TextEditingController();
  String url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    // print(res.body);

    // Data Deserialized
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json Data App"),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app_sharp),
              onPressed: (() {
                Constants.prefs?.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              }))
        ],
      ),
      // "?" means fisrt thing present print otherwise colon ":" ka next data is print on Screen
      body: data != null
          ? ListView.builder(
              itemCount: data == null ? 0 : data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      title: Text(
                        data[index]['title'],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(4.0),
                        //$ Sign is also known as interculasion
                        child: Text("ID: ${data[index]['id']}"),
                      ),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                        data[index]['thumbnailUrl'],
                      )),
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Aun Ali"),
            accountEmail: Text("ali12345@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/dp.webp"),
            ),
            decoration: BoxDecoration(color: Colors.purple),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // data = jsonsdata;
          Navigator.pushNamed(context, "/login");
          setState(() {});
        },
        child: const Icon(
          Icons.arrow_back,
          semanticLabel: "BackWard",
        ),
      ),
    );
  }
}
