import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Newsfeed extends StatefulWidget {
  Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  final iconsGradientColor = List<Color>.from([Colors.blue, Colors.purple]);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white60,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white60,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/messi.jpg"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: Container(
                      width: 290,
                      height: 40,
                      //color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        border: Border.all(width: 1, color: Colors.grey),
                        color: Colors.grey[100],
                      ),
                      child: Center(
                          child: Text(
                        "What's on your mind?                          ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              thickness: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                Text(" Live", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "|",
                  style: TextStyle(color: Colors.grey[300], fontSize: 27),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.photo_library_outlined,
                  color: Colors.green[300],
                ),
                Text(" Photo", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "|",
                  style: TextStyle(color: Colors.grey[300], fontSize: 27),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.video_call,
                  color: Colors.deepPurple[300],
                ),
                Text(" Room",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              height: 2,
              thickness: 15,
              color: Colors.grey[400],
            ),
            Container(
              color: Colors.white,
              height: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            ShaderMask(
                              shaderCallback: (rect) => LinearGradient(
                                      colors: iconsGradientColor,
                                      begin: Alignment.centerLeft)
                                  .createShader(rect),
                              child: Icon(
                                Icons.video_call,
                                color: Colors.white,
                                size: 34,
                              ),
                            ),
                            Text(
                              " Create\n Room",
                              style: TextStyle(
                                  color: Colors.indigo[800],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 50,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/messi.jpg"),
                        ),
                        Positioned(
                          left: 33,
                          top: 33,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 50,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/messi.jpg"),
                        ),
                        Positioned(
                          left: 33,
                          top: 33,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 50,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/messi.jpg"),
                        ),
                        Positioned(
                          left: 33,
                          top: 33,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 50,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/messi.jpg"),
                        ),
                        Positioned(
                          left: 33,
                          top: 33,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 50,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/messi.jpg"),
                        ),
                        Positioned(
                          left: 33,
                          top: 33,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 50,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/messi.jpg"),
                        ),
                        Positioned(
                          left: 33,
                          top: 33,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              thickness: 15,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 165,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              child: Image.asset(
                                "assets/messi.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 85,
                          left: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 18,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.indigo,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 125,
                            left: 20,
                            child: Text(
                              "Create a\n Story",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Container(
                            height: 165,
                            width: 100,
                            child: Image.asset(
                              "assets/messi.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 20,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage("assets/messi.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Container(
                            height: 165,
                            width: 100,
                            child: Image.asset(
                              "assets/messi.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 20,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage("assets/messi.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Container(
                            height: 165,
                            width: 100,
                            child: Image.asset(
                              "assets/messi.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 20,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage("assets/messi.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Container(
                            height: 165,
                            width: 100,
                            child: Image.asset(
                              "assets/messi.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 20,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage("assets/messi.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text(
                  "See All Stories",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              height: 2,
              thickness: 15,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/messi.jpg"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Leo Messi ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text("update his profile picture"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/messi.jpg"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
