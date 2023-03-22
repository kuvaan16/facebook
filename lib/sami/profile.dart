import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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

              child: Image.asset("assets/1.jpg",fit: BoxFit.cover,)),
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
                  radius:80 ,
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
                  child: Icon(Icons.camera_enhance,color: Colors.black,),
                ),
              )

          ],
        ),
        Text("Cristiano Ronaldo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
        Text("portugal",),
        SizedBox(height: 15,),
        Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                width: 300,
                height: 50,
                color: Colors.blueGrey,
                child: Row(
                
                  children: <Widget>[
                    SizedBox(
                      width: 75,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.add)),
                       SizedBox(
                      width: 15,
                    ),
                      Text("add to story",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),
            SizedBox(width: 15,),
              ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                width: 60,
                height: 50,
                color: Colors.grey[400],
               child: Icon(Icons.menu),
              ),
            )
          ],
        ),
        SizedBox(height: 15,),
        Divider(thickness: 1,color: Colors.grey,)
      ],
    );
  
  }
}