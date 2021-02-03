import 'package:flutter/material.dart';
import 'package:insta_dummy/main.dart';
import 'package:insta_dummy/screens/HomePage.dart';
import '../screens/Search_Screen.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              }),
        ),
        Expanded(
          child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              }),
        ),
        Expanded(
          child: IconButton(
              icon: Icon(
                Icons.video_library,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null,
              color: Colors.white),
        ),
        Expanded(
          child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null,
              color: Colors.white),
        ),
        Expanded(
          child: IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }),
        ),
      ],
    );
  }
}
