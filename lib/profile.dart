import 'package:app_shareweb/src/welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_shareweb/views/create_umfrage.dart';
import 'package:app_shareweb/screen2.dart';
import 'package:app_shareweb/src/welcome.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String kontoStand = "1000";
  String umFragen = "200";
  String yt = "600";
  String apps = "200";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black12,
            title: Text(
              "Profile",
              style: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
                    //MaterialPageRoute(builder: (context) => CreateUmfrage()));
              },
              child: Icon(Icons.add),
          ),  
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {_scaffoldKey.currentState.openEndDrawer();},
              )
            ],
          ),
          preferredSize: Size.fromHeight(40)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      endDrawer: Drawer(child: ListView(children: [
        FlatButton(child: Text('Abmelden'), onPressed: () async{
          await FirebaseAuth.instance.signOut();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomePage()),
          );
        })
      ],)),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: <Widget>[
            Text(
              "Kontostand: " + kontoStand + "€",
              style: new TextStyle(fontSize: 15),
            ),
            Text(
              "Statistik: ",
              style: new TextStyle(
                fontSize: 20,
                height: 2,
              ),
            ),
            /*Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Text(
                    "Umfragen: " + umFragen + "€",
                    style: new TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}

