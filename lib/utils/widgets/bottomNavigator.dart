import 'package:flutter/material.dart';

class MyBottomNavigator extends StatelessWidget {
   MyBottomNavigator({super.key, required List<BottomNavigationBarItem> items});

  @override
  Widget build(BuildContext context) {
    return  MyBottomNavigator(
      items:  [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.account_circle),
        ),
      ],
    );
  }
}
