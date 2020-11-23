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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print(height);
    print(width);
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  userName,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 267),
                child: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  onPressed: null,
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            height: 350,
            width: double.infinity,
            child: Text(
              'Image',
            ),
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.only(left: 219),
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
