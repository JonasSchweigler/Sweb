
import 'package:flutter/material.dart';
import 'package:app_shareweb/screen5.dart';

class ScreenFour extends StatefulWidget {
  @override
  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 4"),),
      body: Center(
        child: RaisedButton(
          child: Text("Weiter"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFive()));
          } 
        ),
      ),
    );
  }
}