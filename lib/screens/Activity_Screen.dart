import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Activity',
          style: TextStyle(fontFamily: 'Sans-Serif', fontSize: 28),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    child: Container(
                      alignment: Alignment(1, -1),
                      child: CircleAvatar(
                        child: Text(
                          '16',
                          style:
                              TextStyle(fontFamily: 'Sans-Serif', fontSize: 15),
                        ),
                        backgroundColor: Colors.red,
                        radius: 13,
                      ),
                    ),
                    radius: 28,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
                FlatButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Follow Requests',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Approve or ignore requests',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  onPressed: null,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    child: Container(
                      alignment: Alignment(1, -1),
                      child: CircleAvatar(
                        child: Text(
                          '16',
                          style:
                              TextStyle(fontFamily: 'Sans-Serif', fontSize: 15),
                        ),
                        backgroundColor: Colors.red,
                        radius: 13,
                      ),
                    ),
                    radius: 28,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
                FlatButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Follow Requests',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Approve or ignore requests',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
