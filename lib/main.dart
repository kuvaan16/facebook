import 'package:facebook/sami/profile.dart';
import 'package:facebook/sami/setting.dart';
import 'package:flutter/material.dart';

import 'husseinZ/group.dart';
import 'kuvan/Login.dart';
import 'kuvan/homescreen.dart';
import 'kuvan/newsfeed.dart';
import 'kuvan/notfication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) =>  LoginPage(),
        '/homescreen':(context) => const HomeScreen(),
        '/newsfeed':(context) =>  Newsfeed(),
        '/notfication':(context) => const NotficationPage(),
        '/setting':(context) => const SettingScreen(),
        '/group':(context) => const GroupPage(),
      },
    );
  }
}
