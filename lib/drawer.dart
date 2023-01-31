import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
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
    );
  }
}
