import 'package:flutter/material.dart';
import 'package:app_shareweb/screen3.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 2"),),
      body: Center(
        child: RaisedButton(
          child: Text("Weiter"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
          }
        )
      ),
    );
  }
}