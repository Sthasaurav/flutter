import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    int Days = 26;
    String language = "javascript";
    String language1 = "dart";

    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $Days days of $language and " + language1),
          ),
        ),
      ),
    );
  }
}
