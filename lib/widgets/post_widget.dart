import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String userName;
  Post(this.userName);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
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

  bool isFavorite = false;

  void toggleIcon() {
    setState(() {
      isFavorite = true;
    });
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
                    widget.userName,
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
          GestureDetector(
              onDoubleTap: toggleIcon,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                height: 250,
                color: Colors.white,
                width: double.infinity,
                child: Text(
                  'Image',
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: toggleIcon,
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                    ),
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                  IconButton(
                    onPressed: toggleIcon,
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
          _caption(widget.userName),
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
