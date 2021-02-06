import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
      body: TabBarView(
        dragStartBehavior: DragStartBehavior.down,
        children: [
          PersonalPosts(),
          PersonalPosts(),
        ],
      ),
    );
  }
}
