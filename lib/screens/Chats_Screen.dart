import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          '_userName_',
          style: TextStyle(fontSize: 25, fontFamily: 'Raleway'),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 40,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
                size: 40,
              ),
              onPressed: null)
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'UserName',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Message',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: 2,
      ),
    );
  }
}
