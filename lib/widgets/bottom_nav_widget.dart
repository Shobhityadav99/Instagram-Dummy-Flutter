import 'package:flutter/material.dart';
import 'package:insta_dummy/main.dart';
import 'package:insta_dummy/screens/HomePage.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                  
                );
              }),
        ),
        Expanded(
          child: IconButton(
            icon: Icon(Icons.videocam, color: Colors.white),
            onPressed: null,
          ),
        ),
        Expanded(
          child: IconButton(
              icon: Icon(Icons.add_box, color: Colors.white),
              onPressed: null,
              color: Colors.white),
        ),
        Expanded(
          child: IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: null,
              color: Colors.white),
        ),
        Expanded(
          child: IconButton(
              icon: Icon(Icons.account_circle, color: Colors.white),
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
