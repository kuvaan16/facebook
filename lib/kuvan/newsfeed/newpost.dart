import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/messi.jpg"),
                ),
                margin: EdgeInsets.only(left: 10),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 2,
            thickness: 1,
            color: Colors.grey[300],
            indent: 15,
            endIndent: 10,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  Text(" Live", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Text(
                "|",
                style: TextStyle(color: Colors.grey[300], fontSize: 27),
              ),
              Row(
                children: [
                  Icon(
                    Icons.photo_library_outlined,
                    color: Colors.green[300],
                  ),
                  Text(" Photo", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Text(
                "|",
                style: TextStyle(color: Colors.grey[300], fontSize: 27),
              ),
              Row(
                children: [
                  Icon(
                    Icons.video_call,
                    color: Colors.deepPurple[300],
                  ),
                  Text(
                    " Room",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
