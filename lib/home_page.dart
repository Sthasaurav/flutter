import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int Days = 26;
  String language = "javascript";
  String language1 = "dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car rental app"),
        backgroundColor: Color.fromARGB(202, 238, 77, 13),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $Days days of $language and " + language1),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
