import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/post.dart';




class ActiveSection extends StatelessWidget {
  const ActiveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                top: 11,
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage(userlist[index].img),
                ),
              ),
              Positioned(
                left: 30,
                top: 41,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
