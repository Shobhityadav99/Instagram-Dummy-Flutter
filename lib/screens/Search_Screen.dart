// import 'package:flutter/gestures.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insta_dummy/widgets/bottom_nav_widget.dart';
import 'package:insta_dummy/widgets/personal_posts.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: null,
          ),
        ],
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          return Center(
              child: Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                )),
          ));
        }),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
