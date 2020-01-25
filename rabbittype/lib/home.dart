import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  double size = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      appBar: AppBar(
        title: Text("WELCOME TO RABBIT"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: AnimatedContainer(
        // เพิ่ม
        width: size, //
        height: size, //
        color: Colors.orange[400], //
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

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   HomePageState createState() => new HomePageState();
// }

// class HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.blueAccent[400],
//         appBar: AppBar(
//           title: Text("WELCOME TO RABBIT"),
//           backgroundColor: Colors.green,
//         ),
//         body: Center  (

//           child: Text(''),
//         ));
//   }
// }
