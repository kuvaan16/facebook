import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Text(
                "Groups",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    height: 50,
                    color: Colors.grey[300],
                    child: Row(children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.people),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Your Groups"),
                      SizedBox(
                        width: 15,
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    height: 50,
                    color: Colors.grey[300],
                    child: Row(children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.ac_unit),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Discover"),
                      SizedBox(
                        width: 15,
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Container(
                    height: 50,
                    color: Colors.grey[300],
                    child: Row(children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.add_circle_outline),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Create"),
                      SizedBox(
                        width: 15,
                      ),
                    ]),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image.asset("assets/gambol.jpg")),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Gambol world",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image.asset("assets/heads.jpg")),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Crazy world",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image.asset("assets/jefrry.jpg")),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Cartoon Time",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image.asset("assets/jefrry.jpg")),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Cartoon Time",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 15,
              color: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Text(
                "You've Been Invited",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 6,
                child: Container(
                  height: 250,
                  width: 500,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Image.asset("assets/space.jpg")),
                        title: Column(
                          children: <Widget>[
                            Text(
                              "#Black Spase",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Hussein has invited you !")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 500,
                          color: Colors.grey[300],
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Darwen",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    "Darwen , Gambol's brother in a cartoon showd in tv "),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                width: 150,
                                height: 40,
                                color: Colors.blue,
                                child: Center(
                                    child: Text(
                                  "Join",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18),
                                )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                width: 150,
                                height: 40,
                                color: Colors.grey[300],
                                child: Center(
                                    child: Text(
                                  "Delet",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18),
                                )),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/gambol.jpg"),
                ),
              ),
              title: Row(
                children: <Widget>[
                  Text(
                    "GAMBOL",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.play_arrow),
                  Text(
                    "JEFRRY",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              trailing: Icon(Icons.menu),
            )
          ],
        ),
      ),
    );
  }
}
