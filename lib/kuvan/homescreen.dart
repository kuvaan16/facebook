import 'package:community_material_icon/community_material_icon.dart';
import 'package:facebook/husseinZ/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../husseinZ/group.dart';
import '../sami/profile.dart';
import '../sami/setting.dart';
import 'Login.dart';
import 'newsfeed.dart';
import 'notfication.dart';

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
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            CircleAvatar(
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
              backgroundColor: Colors.grey[300],
              radius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
              backgroundColor: Colors.grey[300],
              radius: 20,
            ),
            SizedBox(
              width: 10,
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
              width: 5,
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey[500],
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.group_outlined,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video_rounded,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person_outline,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_none_rounded,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Newsfeed(),
            GroupPage(),
            VideoScreen(),
            ProfileScreen(),
            NotficationPage(),
            SettingScreen(),
          ],
        ),
      ),
    );
  }
}
