import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'newsfeed/active.dart';
import 'newsfeed/newpost.dart';
import 'newsfeed/post.dart';
import 'newsfeed/story.dart';

class Newsfeed extends StatefulWidget {
  Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  final iconsGradientColor = List<Color>.from([Colors.blue, Colors.purple]);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Container(
        color: Colors.white60,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            NewPost(),
            SizedBox(
              height: 25,
            ),
            Divider(
              height: 2,
              thickness: 8,
              color: Colors.grey[400],
            ),
            Container(
              color: Colors.white,
              height: 70,
              width: 500,
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
                  Container(child: ActiveSection()),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Divider(
              height: 2,
              thickness: 8,
              color: Colors.grey[400],
            ),
            
            Container(
              height: 200,
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
                  Container(child: StorySection()),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
            Divider(
              height: 2,
              thickness: 8,
              color: Colors.grey[400],
            ),
           
           
          ],
        ),
      ),
      NewsfeedPost(),
      ],
    );
  }
}
