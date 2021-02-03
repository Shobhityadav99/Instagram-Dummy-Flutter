import 'package:flutter/material.dart';

class PersonalChatScreen extends StatefulWidget {
  @override
  _PersonalChatScreenState createState() => _PersonalChatScreenState();
}

class _PersonalChatScreenState extends State<PersonalChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(
                  context,
                );
              }),
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
        body: Center(
          child: Text('Your chat will be displayed here soon',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}
