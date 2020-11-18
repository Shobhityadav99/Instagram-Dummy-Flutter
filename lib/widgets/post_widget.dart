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
            children: <Widget>[
              Text(
                userName,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                alignment: Alignment(88, 0),
                onPressed: null,
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            height: 300,
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
                alignment: Alignment(-2, 0),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add_comment,
                  color: Colors.white,
                ),
                alignment: Alignment(-5, 0),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                alignment: Alignment(-7, 0),
              ),
              IconButton(
                alignment: Alignment(57, 0),
                onPressed: null,
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
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
