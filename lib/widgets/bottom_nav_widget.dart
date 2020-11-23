import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home, color: Colors.white),
          onPressed: null,
          color: Colors.white,
        ),
        SizedBox(
          width: 40,
        ),
        IconButton(
          icon: Icon(Icons.videocam, color: Colors.white),
          onPressed: null,
        ),
        SizedBox(
          width: 40,
        ),
        IconButton(
            icon: Icon(Icons.add_box, color: Colors.white),
            onPressed: null,
            color: Colors.white),
        SizedBox(
          width: 40,
        ),
        IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: null,
            color: Colors.white),
        SizedBox(
          width: 40,
        ),
        IconButton(
            icon: Icon(Icons.account_circle, color: Colors.white),
            onPressed: null,
            color: Colors.white),
      ],
    );
  }
}
