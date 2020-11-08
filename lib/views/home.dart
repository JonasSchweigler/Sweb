import 'package:flutter/material.dart';
import 'package:app_shareweb/homepage.dart';
import 'package:app_shareweb/screen.dart';
import 'package:app_shareweb/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _screenNumber = 0;
  final List<Widget> _children = [HomePagePage(), SearchPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: _children[_screenNumber],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            new BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),
            ),
            new BottomNavigationBarItem(
              title: Text("Search"),
              icon: Icon(Icons.search),
            ),
            new BottomNavigationBarItem(
              title: Text("Profile"),
              icon: Icon(Icons.person),
            ),
          ],
          currentIndex: _screenNumber,
          onTap: (i) => setState(() {
            _screenNumber = i;
          }),
        ),
      ),
    );
  }
}
