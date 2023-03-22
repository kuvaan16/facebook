import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'newsfeed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            CircleAvatar(
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
              backgroundColor: Colors.grey[300],
              radius: 20,
            ),
            SizedBox(
              width: 15,
            ),
            CircleAvatar(
              child: Icon(
                CommunityMaterialIcons.facebook_messenger,
                color: Colors.black,
              ),
              backgroundColor: Colors.grey[300],
              radius: 20,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.group_add,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.video_library,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            Newsfeed(),
            Center(
              child: Text("group"),
            ),
            Center(
              child: Text("video"),
            ),
            Center(
              child: Text("profile"),
            ),
            Center(
              child: Text("notfication"),
            ),
            Center(
              child: Text("setting"),
            ),
          ],
        ),
      ),
    );
  }
}
