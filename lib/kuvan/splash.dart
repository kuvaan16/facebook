import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Positioned(
                  child: Image.asset(
                    "assets/splash.jpg",
                    width: 100,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              SpinKitCircle(
                color: Color.fromRGBO(59, 89, 152, 1),
                size: 40.0,
              ),
            ],
          ),
          Positioned(
            bottom: 15,
            left: MediaQuery.of(context).size.width / 2.6,
            child: Column(children: [
              Text(
                "from",
                style: TextStyle(
                    color: Color.fromRGBO(59, 89, 152, 0.5), fontSize: 20),
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.meta,
                    color: Color.fromRGBO(59, 89, 152, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Meta",
                      style: TextStyle(
                          color: Color.fromRGBO(59, 89, 152, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
