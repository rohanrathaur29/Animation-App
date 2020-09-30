import 'package:flutter/material.dart';
import 'package:animation_app/home.dart';
import 'dart:math' as math;

class anime extends StatefulWidget {
  @override
  _animeState createState() => _animeState();
}

class _animeState extends State<anime>
    with SingleTickerProviderStateMixin {
      var animation;
      
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,
    duration: Duration(seconds: 8));
    animation = Tween(begin:0, end: 2*math.pi).animate(_controller)
    ..addListener(() {
      setState((){
        animation.value;
      });
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title : Text("Your Animation",),
    backgroundColor: Colors.blue.shade800,
    ),
      body: Container(height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
        border: Border.all(
          color: Colors.blueGrey.shade900,
        )
      ),
        child: Transform.rotate(angle: 90*animation.value,
                child: Center(
                  child: Stack( children :<Widget>[ 
                    Container(padding: EdgeInsets.all(10),
                      child: Image.asset("image/stars.jpg",
                      fit:BoxFit.fill ,),
                    )
                    ,Center(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(30),
                        width: 50* animation.value,
                        height: 50* animation.value,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(120),
                          border: Border.all(
                            color: Colors.blueGrey.shade900,
                            width:7,
                          )
                        ),
                        child: Text(name,
                        style: TextStyle(
                          fontSize: 10* animation.value,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueGrey.shade900
                        ),),
                      ),
                    ),
                      ]),
                ),
        ),
      ),
    );
      
    
  }
}