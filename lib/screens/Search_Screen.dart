import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SearchBar(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )),
      ),
    );
  }
}
