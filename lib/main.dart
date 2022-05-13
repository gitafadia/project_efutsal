import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      color: Colors.lightGreen,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
            child: Center(
              child: Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Hello Welcome! Please Sign Up",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87)),
              prefixIcon: Icon(
                Icons.person,
                size: 40,
              ),
              hintText: "Masukkan Username",
              hintStyle: TextStyle(color: Colors.black87),
              labelText: "Username",
              labelStyle: TextStyle(color: Colors.black87),
            ),
          )
        ],
      ),
    ));
  }
}
