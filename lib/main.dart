import 'package:flutter/material.dart';

import 'husseinZ/group.dart';
import 'kuvan/Login.dart';
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
      initialRoute: '/group',
      routes: {
        '/':(context) =>  LoginPage(),
        '/newsfeed':(context) => const NewsfeedPage(),
        '/notfication':(context) => const NotficationPage(),
        '/group':(context) => const GroupPage(),
      },
      
    );
  }
}
