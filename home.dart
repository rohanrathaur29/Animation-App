import 'package:animation_app/anime.dart';
import 'package:flutter/material.dart';

class firsthome extends StatefulWidget {
  @override
  _firsthomeState createState() => _firsthomeState();
}

String name;

class _firsthomeState extends State<firsthome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text('Animation Details')),
        backgroundColor: Colors.blue.shade900,
      ),

      
      body: Container(
        color: Colors.blueGrey.shade700,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Image.asset("image/animation.jpg",),
            TextField(
              autofocus: true,
              cursorColor: Colors.black,
              style: TextStyle(height: 1),
              decoration: InputDecoration(
                hintText: "Enter your name.",
                helperText: "Name that you want in animation.",
                border: OutlineInputBorder(),
                ),
                onChanged: (val){
                  name=val;
                  },
                  autocorrect: false,
            ),
            Stack(children: <Widget>[
              Material(
                color: Colors.blueGrey,
                elevation: 15,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => anime()));
                },
                minWidth: 100,
                height: 20,
                child: Text("Show Animation"),)
                )],
            
            alignment: Alignment.center,),
          ],
        ),
      )
      
    );
  }
}