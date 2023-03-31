import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/post.dart';


class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userlist.length,
        padding: EdgeInsets.symmetric(vertical: 15),
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
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
                    backgroundImage: AssetImage(userlist[index].img),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 10,
                child: Text(
                  userlist[index].name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
