import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color:Colors.white,
        child: Column(
          children: <Widget>[
            ListTile(
            leading: Text("Groups",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            trailing: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.search,color: Colors.black,)),
            ),
            SizedBox(height: 10,),
            Row(
            children: <Widget>[
              SizedBox(width: 10,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(Icons.people),
                      SizedBox(width: 5,),
                    Text("Your Groups"),
                    SizedBox(width: 15,),
                    
                    ]),
                ),
              ),
            SizedBox(width: 15,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(Icons.ac_unit),
                      SizedBox(width: 5,),
                    Text("Discover"),
                    SizedBox(width: 15,),
                    
                    ]),
                ),
              ),
                SizedBox(width: 15,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(Icons.add_circle_outline),
                      SizedBox(width: 5,),
                    Text("Create"),
                    SizedBox(width: 15,),
                    
                    ]),
                ),
              )


            ],
            )
          ],
        ),
      ),
    );
  }
}