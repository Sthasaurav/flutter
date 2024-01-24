import 'package:flutter/material.dart';
// import 'package:flutter_application_1/utils/widgets/bottomNavigator.dart';
// import 'package:flutter_application_1/utils/widgets/bottomNavigator.dart';
import 'package:flutter_application_1/utils/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int Days = 30;
  String language = "javascript";
  String language1 = "dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car rental app"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $Days days of $language and " + language1),
        ),
      ),
      drawer: MyDrawer(),
      // bottomNavigationBar: MyBottomNavigator(
      //   items: [],
      // ),
      //   bottomNavigationBar: BottomNavigationBar(
      //       currentIndex: 0,
      //       fixedColor: Colors.deepPurple,
      //       items: const [
      //         BottomNavigationBarItem(
      //           label: "Home",
      //           icon: Icon(Icons.home),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Search",
      //           icon: Icon(Icons.search),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Profile",
      //           icon: Icon(Icons.account_circle),
      //         ),
      //       ],
      //       // onTap: (int indexOfItem) {}),
      // ));
    );
  }
}
