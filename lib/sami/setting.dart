import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Text(
                "Menu",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
              title: Text(
                "kurdstan \nSee your profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/cr7.jpg"),
              ),
              title: Text(
                "soccer player",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/br.jpg"),
              ),
              title: Text(
                "facebook",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/messi.jpg"),
              ),
              title: Text(
                "court football player ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 140,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/br.jpg"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Hello Brazil ")
                          ]),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 140,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/W.jpg"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Hour.....")
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 140,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/1.jpg"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Kurdstan My Country")
                          ]),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 140,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/benz.jpg"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("French Player")
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("log out"),
            ),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
