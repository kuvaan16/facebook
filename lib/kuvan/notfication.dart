import 'package:community_material_icon/community_material_icon.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/notficationdata.dart';

class NotficationPage extends StatefulWidget {
  const NotficationPage({super.key});

  @override
  State<NotficationPage> createState() => _NotficationPageState();
}

class _NotficationPageState extends State<NotficationPage> {
  int likes = 1614;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Text(
              "Notifications",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                "Earlier",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: notificationData.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          AssetImage(notificationData[index].avatar),
                    ),
                    title: Row(children: [
                      Text(notificationData[index].name, style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 5,),
                      Text(notificationData[index].description)
                    ],),
                    subtitle: Text(notificationData[index].time),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
