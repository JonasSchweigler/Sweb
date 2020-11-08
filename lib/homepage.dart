import 'package:flutter/material.dart';

class HomePagePage extends StatefulWidget {
  @override
  _HomePagePageState createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black12,
            title: Text(
              "Home",
              style: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          preferredSize: Size.fromHeight(40)),
      body: Stack(
        /*decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/example1.jpg"),
            fit: BoxFit.fill,
          )
        ),*/
        children: <Widget>[
          // Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/example1.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 100, horizontal: 101),
                child: Text(
                  "AppName",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 300, horizontal: 101),
                  child: Text("AppName",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
