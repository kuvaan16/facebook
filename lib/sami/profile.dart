import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: 500,
                color: Colors.white,
              ),
              Container(
                  height: 200,
                  width: 500,
                  child: Image.asset(
                    "assets/1.jpg",
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top: 150,
                left: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Container(
                    height: 40,
                    width: 50,
                    color: Colors.white,
                    child: Icon(Icons.camera_alt),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 120,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage("assets/cr7.jpg"),
                  ),
                ),
              ),
              Positioned(
                top: 210,
                left: 240,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.camera_enhance,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          Text(
            "Cristiano Ronaldo",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            "portugal",
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Container(
                  width: 300,
                  height: 50,
                  color: Colors.blue[500],
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 75,
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.blue[500],
                          radius: 15,
                          child: Icon(
                            Icons.add_outlined,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Add to story",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Container(
                  width: 60,
                  height: 50,
                  color: Colors.grey[400],
                  child: Icon(
                    FontAwesomeIcons.ellipsis,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[400],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "  Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.grey[500]),
            title: Text(
              "Current city",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.briefcase, color: Colors.grey[500]),
            title: Text(
              "Workplace",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          ListTile(
            leading:
                Icon(FontAwesomeIcons.graduationCap, color: Colors.grey[500]),
            title: Text(
              "School",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.grey[500]),
            title: Text(
              "Hometown",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.ellipsis),
            title: Text(
              "See your About info",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Container(
            height: 35,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.cyan[100],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(
                "Edit public details",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[400],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
