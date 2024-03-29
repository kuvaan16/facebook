import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/post.dart';


class NewsfeedPost extends StatefulWidget {
  const NewsfeedPost({super.key});

  @override
  State<NewsfeedPost> createState() => _NewsfeedPostState();
}

class _NewsfeedPostState extends State<NewsfeedPost> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: userlist.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 15),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage(userlist[index].img),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 200,
                          margin: EdgeInsets.only(top: 10),
                          child: Title(
                            color: Colors.black,
                            child: Html(
                                data: "<p><b>" +
                                    userlist[index].name +
                                    "</b><br><span>" +
                                    userlist[index].postedtime.toString() +
                                    "m</span></p>",
                                style: {
                                  "p": Style(
                                    fontSize: FontSize(15),
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[400],
                                  ),
                                  "b": Style(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  "h1": Style(
                                      color: Colors.grey[400],
                                      fontSize: FontSize(14),
                                      fontWeight: FontWeight.w300),
                                }),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                  ],
                ),
                ConstrainedBox(
                  constraints: new BoxConstraints(
                    minHeight: 100.0,
                    minWidth: 100.0,
                    maxHeight: 350.0,
                    maxWidth: MediaQuery.of(context).size.width,
                  ),
                  child: Container(
                    child: Image.asset(
                      userlist[index].img,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up_alt,
                          color: Colors.blue,
                        ),
                        Text(userlist[index].likes.toString(),
                            style: TextStyle(color: Colors.grey[400])),
                      ],
                    ),
                    Row(
                      children: [Text("  ")],
                    ),
                    Row(
                      children: [Text("  ")],
                    ),
                    Row(
                      children: [
                        Text(
                          userlist[index].comment.toString() +
                              " comment . " +
                              userlist[index].share.toString() +
                              " share",
                          style: TextStyle(color: Colors.grey[400]),
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
                  thickness: 1,
                  color: Colors.grey[300],
                  indent: 15,
                  endIndent: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up_outlined,
                          color: Colors.grey[500],
                        ),
                        Text(
                          " Like",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.message, color: Colors.grey[500]),
                        Text(
                          " Comment",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.share, color: Colors.grey[500]),
                        Text(
                          " Share",
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  height: 2,
                  thickness: 8,
                  color: Colors.grey[400],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
