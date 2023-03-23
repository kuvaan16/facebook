import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
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
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
          height: 5,
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
          height: 15,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/messi.jpg"),
          ),
          title: Html(
              data:
                  "<p><b>Sami Akre, Hussain Zebari</b> and 1616 other reacted to your post in <b>Flutter Cours</b></p>",
              style: {
                "p": Style(
                    fontSize: FontSize.large, fontWeight: FontWeight.normal),
                "b": Style(
                  fontWeight: FontWeight.bold,
                ),
              }),
              
          trailing: Icon(
            FontAwesomeIcons.ellipsis,
            color: Colors.black,
            size: 18,
          ),
        ),
        
        Text("3 hours ago                                        ",
            style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }
}
