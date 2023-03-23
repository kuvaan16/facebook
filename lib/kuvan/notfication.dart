import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotficationPage extends StatefulWidget {
  const NotficationPage({super.key});

  @override
  State<NotficationPage> createState() => _NotficationPageState();
}

class _NotficationPageState extends State<NotficationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Text(
            "Notification",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Text(
              "Earlier",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/messi.jpg"),
          ),
          title: Text("Someone has reacted to your post"),
          trailing: Icon(
            FontAwesomeIcons.ellipsis,
            color: Colors.black,
            size: 18,
          ),
        ),
      ],
    );
  }
}
