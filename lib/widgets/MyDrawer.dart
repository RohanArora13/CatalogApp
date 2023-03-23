import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          children: <Widget>[
            // ignore: unnecessary_new
            new UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.white),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                    NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
              ),
              accountEmail: Text(
                "Rohanarora1313@",
                style: TextStyle(color: Colors.black),
              ),
              accountName: Text(
                "Rohanarora",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.bus_alert,
                color: Colors.blue,
              ),
              title: Text("data 1"),
              textColor: Colors.blue,
            ),
            ListTile(
              leading: Icon(
                Icons.follow_the_signs,
                color: Colors.blue,
              ),
              title: Text("data 2"),
              textColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
