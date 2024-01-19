// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/utils/widgets/bottomNavigator.dart';
// import 'package:flutter_application_1/utils/widgets/bottomNavigator.dart';
import 'package:flutter_application_1/utils/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int Days = 30;
  String language = "javascript";
  String language1 = "dart";
  // String _images=[images/car-4],
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car rental app"), 
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          // child:CarouselSlider(
          //   items:[
          //     ClipRRect(borderRadius: BorderRadius.circular(7),child:Image.asset())
          //   ]
          // )
          // child: Text("Welcome to $Days days of $language and " + language1),
        ),
      ),
      drawer: MyDrawer(),
      
      // bottomNavigationBar: MyBottomNavigator(
      //   items:  [],
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
