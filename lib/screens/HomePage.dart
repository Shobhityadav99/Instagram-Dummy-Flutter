import 'package:flutter/material.dart';
import '../widgets/story_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              icon: Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              onPressed: null),
          title: Text(
            '_UserName_',
            style: TextStyle(fontFamily: 'OpenSans'),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: CircleAvatar(
                        radius: 46,
                        backgroundColor: Colors.pink,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '18\nposts',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '120\nfollowers',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '97\nfollowing',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Name\nBio',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: OutlineButton(
                  onPressed: null,
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  disabledBorderColor: Colors.grey,
                  disabledTextColor: Colors.white,
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    StoryWidget('imageUrl', 'userName'),
                    StoryWidget('imageUrl', 'userName'),
                    StoryWidget('imageUrl', 'userName'),
                    StoryWidget('imageUrl', 'userName'),
                    FlatButton(
                      onPressed: null,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: null,
                      child: Icon(
                        Icons.grid_on,
                        color: Colors.white,
                      )),
                ),
                Expanded(
                    child: FlatButton(
                        onPressed: null,
                        child: Icon(
                          Icons.portrait,
                          color: Colors.white,
                        ))),
              ],
            ),
            GridTile(child: Text('images'))
          ]),
        ));
  }
}
