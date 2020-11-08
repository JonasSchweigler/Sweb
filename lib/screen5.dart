
import 'package:flutter/material.dart';
import 'package:app_shareweb/views/create_umfrage.dart';

class ScreenFive extends StatefulWidget {
  @override
  _ScreenFiveState createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 5"),),
      body: Center(
        child: RaisedButton(
          child: Text("Weiter"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CreateUmfrage()));
          }
        ),
      ),
    );
  }
}