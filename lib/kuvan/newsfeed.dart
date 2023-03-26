import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../userdata.dart';

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
              height: 15,
            ),
            Container(
              color: Colors.white60,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/messi.jpg"),
                  ),
                  SizedBox(
                    width: 10,
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
                      ),
                      child: Center(
                          child: Text(
                        "What's on your mind?                          ",
                        style: TextStyle(fontSize: 16),
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
              thickness: 10,
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
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: userlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: <Widget>[
                            Container(
                              width: 65,
                              height: 100,
                            ),
                            Positioned(
                              top: 12,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage(userlist[index].img),
                              ),
                            ),
                            Positioned(
                              left: 33,
                              top: 43,
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 2,
              thickness: 10,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 10,
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
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: userlist.length,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 3),
                                height: 165,
                                width: 100,
                                child: Image.asset(
                                  userlist[index].img,
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
                                  backgroundImage:
                                      AssetImage(userlist[index].img),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
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
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              height: 2,
              thickness: 10,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/messi.jpg"),
                    ),
                    Container(
                        width: 270,
                        height: 60,
                        alignment: Alignment.topLeft,
                        child: Title(
                          color: Colors.black,
                          child: Html(
                              data:
                                  "<p><b>Leo Messi</b> updated his profile picture.<br><span>16m</span></p>",
                              style: {
                                "p": Style(
                                    fontSize: FontSize(15),
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0)),
                                "b": Style(
                                  fontWeight: FontWeight.bold,
                                ),
                                "h1": Style(
                                    color: Colors.grey[400],
                                    fontSize: FontSize(14),
                                    fontWeight: FontWeight.w300),
                              }),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 40,
                      child: Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/messi.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_alt,
                      color: Colors.blue,
                    ),
                    Text("16", style: TextStyle(color: Colors.grey[400])),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "16 comment . 16 share",
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_outlined, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.message, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.share, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              thickness: 10,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/photo_1.jpg"),
                    ),
                    Container(
                        width: 270,
                        height: 60,
                        alignment: Alignment.topLeft,
                        child: Title(
                          color: Colors.black,
                          child: Html(
                              data:
                                  "<p><b>Someone</b> <br><span>16m</span></p>",
                              style: {
                                "p": Style(
                                    fontSize: FontSize(15),
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0)),
                                "b": Style(
                                  fontWeight: FontWeight.bold,
                                ),
                                "h1": Style(
                                    color: Colors.grey[400],
                                    fontSize: FontSize(14),
                                    fontWeight: FontWeight.w300),
                              }),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 40,
                      child: Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/photo_2.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_alt,
                      color: Colors.blue,
                    ),
                    Text("16", style: TextStyle(color: Colors.grey[400])),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "16 comment . 16 share",
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_outlined, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.message, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.share, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
             SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              thickness: 10,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/photo_10.jpg"),
                    ),
                    Container(
                        width: 270,
                        height: 60,
                        alignment: Alignment.topLeft,
                        child: Title(
                          color: Colors.black,
                          child: Html(
                              data:
                                  "<p><b>Someone</b> <br><span>16m</span></p>",
                              style: {
                                "p": Style(
                                    fontSize: FontSize(15),
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0)),
                                "b": Style(
                                  fontWeight: FontWeight.bold,
                                ),
                                "h1": Style(
                                    color: Colors.grey[400],
                                    fontSize: FontSize(14),
                                    fontWeight: FontWeight.w300),
                              }),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 40,
                      child: Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/photo_12.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_alt,
                      color: Colors.blue,
                    ),
                    Text("16", style: TextStyle(color: Colors.grey[400])),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "16 comment . 16 share",
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_outlined, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.message, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.share, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              thickness: 10,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/photo_13.jpg"),
                    ),
                    Container(
                        width: 270,
                        height: 60,
                        alignment: Alignment.topLeft,
                        child: Title(
                          color: Colors.black,
                          child: Html(
                              data:
                                  "<p><b>Someone</b> <br><span>16m</span></p>",
                              style: {
                                "p": Style(
                                    fontSize: FontSize(15),
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0)),
                                "b": Style(
                                  fontWeight: FontWeight.bold,
                                ),
                                "h1": Style(
                                    color: Colors.grey[400],
                                    fontSize: FontSize(14),
                                    fontWeight: FontWeight.w300),
                              }),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 40,
                      child: Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/photo_16.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_alt,
                      color: Colors.blue,
                    ),
                    Text("16", style: TextStyle(color: Colors.grey[400])),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "16 comment . 16 share",
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_outlined, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.message, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.share, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              thickness: 10,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/photo_15.jpg"),
                    ),
                    Container(
                        width: 270,
                        height: 60,
                        alignment: Alignment.topLeft,
                        child: Title(
                          color: Colors.black,
                          child: Html(
                              data:
                                  "<p><b>Someone</b> <br><span>16m</span></p>",
                              style: {
                                "p": Style(
                                    fontSize: FontSize(15),
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0)),
                                "b": Style(
                                  fontWeight: FontWeight.bold,
                                ),
                                "h1": Style(
                                    color: Colors.grey[400],
                                    fontSize: FontSize(14),
                                    fontWeight: FontWeight.w300),
                              }),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 40,
                      child: Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/photo_11.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_alt,
                      color: Colors.blue,
                    ),
                    Text("16", style: TextStyle(color: Colors.grey[400])),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "16 comment . 16 share",
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_outlined, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.message, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.share, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              thickness: 10,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/photo_4.jpg"),
                    ),
                    Container(
                        width: 270,
                        height: 60,
                        alignment: Alignment.topLeft,
                        child: Title(
                          color: Colors.black,
                          child: Html(
                              data:
                                  "<p><b>Someone</b> <br><span>16m</span></p>",
                              style: {
                                "p": Style(
                                    fontSize: FontSize(15),
                                    fontWeight: FontWeight.normal,
                                    padding: EdgeInsets.all(0)),
                                "b": Style(
                                  fontWeight: FontWeight.bold,
                                ),
                                "h1": Style(
                                    color: Colors.grey[400],
                                    fontSize: FontSize(14),
                                    fontWeight: FontWeight.w300),
                              }),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 40,
                      child: Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/photo_6.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_alt,
                      color: Colors.blue,
                    ),
                    Text("16", style: TextStyle(color: Colors.grey[400])),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "16 comment . 16 share",
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_outlined, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.message, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.share, color: Colors.grey[500]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
