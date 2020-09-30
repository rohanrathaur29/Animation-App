import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:animation_app/home.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: firsthome(),
      title:Text('Hello User!',
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
      ),
      image: Image.asset("image/animation.jpg"),
      backgroundColor: Colors.blue,
      //styleTextUnderTheLoader:TextStyle(),
      photoSize: 200.0,

    );
  }
}

