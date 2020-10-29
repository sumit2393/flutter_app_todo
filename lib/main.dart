import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_todo/ui/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reactive Flutter',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          canvasColor: Colors.transparent
      ),
      //Our only screen/page we have
      home: HomePage(title: 'My Todo List'),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (BuildContext ctx) => HomePage()));

  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // backgroundColor: Color(0xFF670e1e),
      body: new Center(
        child: Image.asset("assets/images/todo.png"),
      ),
    );
  }
}