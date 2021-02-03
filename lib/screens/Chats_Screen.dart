import 'package:flutter/material.dart';
import 'Personal_chat.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
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
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 8, bottom: 8),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink,
                  ),
                ),
                FlatButton(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'UserName',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '69 new messages',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalChatScreen()));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.photo_camera,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ],
            );
          },
          itemCount: 12,
        ),
      ),
    );
  }
}
