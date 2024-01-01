import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'utils/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),

        darkTheme: MyTheme.darkTheme(context),
        theme: MyTheme.lightTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.loginRoutes,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoutes: (context) => HomePage(),
          MyRoutes.loginRoutes: (context) => LoginPage(),
        });
  }
}




// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.light,
//       theme: MyTheme.lightTheme(context),
//       darkTheme: MyTheme.darkTheme(context),
//       debugShowCheckedModeBanner: false,
//       initialRoute: MyRoutes.homeRoute,
//       routes: {
//         "/": (context) => LoginPage(),
//         MyRoutes.homeRoute: (context) => HomePage(),
//         MyRoutes.loginRoute: (context) => LoginPage()
//       },
//     );
//   }
// }