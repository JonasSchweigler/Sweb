
import 'package:flutter/material.dart';
import 'package:app_shareweb/screen4.dart';

class ScreenThree extends StatefulWidget {
  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 3"),),
      body: Center(
        child: RaisedButton(
          child: Text("Weiter"),
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour())); 
          },
        ),
      ),
    );
  }
}
