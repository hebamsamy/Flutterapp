import 'package:app/ExamScreen.dart';
import 'package:app/fristScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("my App"),
        ),
        body: ExamScreen(),
      ),
    );
  }
}



// Container(
//           child: Text("welcome"),
//           // height: 400,
//           // color: Colors.black,
//         ),