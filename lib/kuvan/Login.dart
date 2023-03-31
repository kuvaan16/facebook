import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final usercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/login.jpg",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Arabic",
                        style: TextStyle(color: Colors.grey),
                      )),
                  Text("-", style: TextStyle(color: Colors.grey)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Francais",
                        style: TextStyle(color: Colors.grey),
                      )),
                  Text("-", style: TextStyle(color: Colors.grey)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "More...",
                      )),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: TextField(
                  controller: usercontroller,
                  decoration: InputDecoration(
                    hintText: "Phone or Email",
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Log In"),
                onPressed: () {
                  Navigator.pushNamed(context, '/homescreen');
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 108, vertical: 13))),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Color.fromRGBO(59, 89, 152, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Text(
                  "----------------------------- Or -----------------------------",
                  style: TextStyle(color: Colors.grey)),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: ElevatedButton(
                  child: Text("Create New Account"),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 68, vertical: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
