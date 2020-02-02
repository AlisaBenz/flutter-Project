import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class AboutMePage extends StatefulWidget {
  AboutMePage({Key key}) : super(key: key);

  @override
  AboutMePageState createState() => new AboutMePageState();
}

class AboutMePageState extends State<AboutMePage> {
  double size = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text("Rabbit animation"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: AnimatedContainer(
        child: Image.asset("assets/icons/RR1.png"),

        // เพิ่ม
        width: size, //
        height: size, //
        color: Colors.cyan[600], //
        duration: Duration(milliseconds: 500), //
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            size = size + 50; // เพิ่ม
          });
        },
      ),
    );
  }
}
