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
                backgroundImage: AssetImage("assets/photo_5.jpg"),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sami Sabah ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See your profile",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
            ListTile(
              title: Text(
                "Your shortcuts",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/photo_3.jpg"),
              ),
              title: Text(
                "Mevan",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/photo_9.jpg"),
              ),
              title: Text(
                "Omer",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/photo_16.jpg"),
              ),
              title: Text(
                "Rejin",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            ListTile(
              title: Text(
                "All shortcuts",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    height: 90,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/photo_2.jpg"),
                                radius: 16,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("...")
                            ]),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 90,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/photo_10.jpg"),
                                radius: 16,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(".....")
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    height: 90,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/photo_2.jpg"),
                                radius: 16,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("...")
                            ]),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 90,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/photo_10.jpg"),
                                radius: 16,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(".....")
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    height: 90,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/photo_2.jpg"),
                                radius: 16,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("...")
                            ]),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    height: 90,
                    width: 180,
                    color: Colors.white,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/photo_10.jpg"),
                                radius: 16,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(".....")
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: ElevatedButton(
                child: Text(
                  "See more",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.grey[300],
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: ElevatedButton(
                child: Text(
                  "Log out",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.grey[300],
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                ),
              ),
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
