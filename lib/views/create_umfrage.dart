import 'package:flutter/material.dart';

class CreateUmfrage extends StatefulWidget {
  @override
  _CreateUmfrageState createState() => _CreateUmfrageState();
}

class _CreateUmfrageState extends State<CreateUmfrage> {
  String authorName, title, desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black12,
            title: Text(
              "Umfrage Hinzufügen",
              style: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            actions: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.file_upload),
              )
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                width: MediaQuery.of(context).size.width,
                child: Icon(
                  Icons.add_a_photo,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(hintText: "Name"),
                      onChanged: (val) {
                        authorName = val;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Titel"),
                      onChanged: (val) {
                        title = val;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Beschreibung"),
                      onChanged: (val) {
                        desc = val;
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
