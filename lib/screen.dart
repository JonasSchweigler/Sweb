import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black12,
            title: Text(
              "Search",
              style: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          preferredSize: Size.fromHeight(40)),
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
