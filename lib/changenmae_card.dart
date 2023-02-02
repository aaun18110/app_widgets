import 'package:flutter/material.dart';

class Changename_Card extends StatefulWidget {
  const Changename_Card({
    Key? key,
    required this.myText,
    required TextEditingController namecontroller,
  })  : _namecontroller = namecontroller,
        super(key: key);

  final String myText;
  final TextEditingController _namecontroller;

  @override
  State<Changename_Card> createState() => _Changename_CardState();
}

class _Changename_CardState extends State<Changename_Card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Column(
        children: [
          Image.asset(
            "assets/images/card.jpg",
            fit: BoxFit.contain,
            // width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            // "Welcome $myText",
            widget.myText,
            style: const TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              // obscureText: true,
              // onChanged: (value) {
              //   myText = value;
              //   setState(() {});
              // },
              controller: widget._namecontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: const Text("Name"),
                hintText: "Enter your name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                label: const Text("Password"),
                hintText: "Enter Password",
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
