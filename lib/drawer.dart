import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Ashish Thakar"),
          accountEmail: Text("ashish@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Account"),
          subtitle: Text("personal"),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text("E-mail"),
          subtitle: Text("ashish@gmail.com"),
          trailing: Icon(Icons.send),
        ),
        ListTile(
          leading: Icon(Icons.account_balance),
          title: Text("balance"),
          trailing: Icon(Icons.balance),
        ),
        ListTile(
          leading: Icon(Icons.storage),
          title: Text("storage"),
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Exit"),
        ),
      ],
    ));
  }
}
