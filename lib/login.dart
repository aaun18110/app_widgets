import 'package:app_widgets/Utils/Contants.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernamecontroller = TextEditingController();
  final userpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
      ),
      drawer: const Drawer(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/card.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  fillColor: Colors.deepPurpleAccent,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0))),
                                  hintText: "Enter Username",
                                  label: Text("Username")),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0))),
                                  hintText: "Enter Passwrod",
                                  label: Text("Password")),
                            ),
                          ],
                        )),
                        // FlatButton
                        // RawMaterialButton
                        //RaisedButton
                        //OutlineButton
                        const SizedBox(height: 30),
                        RawMaterialButton(
                          fillColor: Colors.purple,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0))),
                          hoverColor: Colors.orange,
                          mouseCursor: MouseCursor.defer,
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const JsonData()));
                            Constants.prefs?.setBool("loggedIn", true);
                            // pushReplacementNamed is used to not back of the page again
                            Navigator.pushReplacementNamed(context, "/Json_datas");
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
