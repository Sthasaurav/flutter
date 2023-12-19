import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
// import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginpic.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "welcome $name",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                        onTap: () async {
                          setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(Duration(seconds: 1,milliseconds: 7));
                          Navigator.pushNamed(context, MyRoutes.homeRoutes);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: 150,
                          // width: changeButton ? 50 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Text("Loging In...")
                              : Text("Login",
                                  style: TextStyle(color: Colors.white)),
                          decoration: BoxDecoration(
                            color: changeButton
                                ? Colors.purple
                                : Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 40 : 4),
                          ),
                        )),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
