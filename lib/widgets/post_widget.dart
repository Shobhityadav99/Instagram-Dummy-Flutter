import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String userName;
  Post(this.userName);
  Widget _caption(String val) {
    return Column(children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          val,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.pink,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    userName,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: null,
                  alignment: Alignment.centerRight,
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            height: 250,
            width: double.infinity,
            child: Text(
              'Image',
            ),
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.add_comment,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          _caption(userName),
          _caption('Description / Caption'),
          _caption('Comments'),
          _caption('Comments'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
                color: Colors.grey,
                height: 1,
                width: MediaQuery.of(context).size.width),
          ),
        ],
      ),
    );
  }
}
