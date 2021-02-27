import 'package:flutter/material.dart';
import 'package:insta_dummy/widgets/bottom_nav_widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<SearchScreen> {
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          title: TextField(
            controller: controller,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              onPressed: null,
            )
          ],
          bottom:
              TabBar(isScrollable: true, indicatorColor: Colors.white, tabs: [
            Tab(
              child: tabsWidget('IGTV'),
            ),
            Tab(
              child: tabsWidget('Travel'),
            ),
            Tab(
              child: tabsWidget('Architecture'),
            ),
            Tab(
              child: tabsWidget('Decor'),
            ),
            Tab(
              child: tabsWidget('Style'),
            ),
            Tab(
              child: tabsWidget('Art'),
            ),
            Tab(
              child: tabsWidget('Food'),
            ),
            Tab(
              child: tabsWidget('DIY'),
            ),
            Tab(
              child: tabsWidget('Beauty'),
            ),
            Tab(
              child: tabsWidget('Music'),
            ),
            Tab(
              child: tabsWidget('TV & Movies'),
            ),
            Tab(
              child: tabsWidget('Sports'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
          gridViewTiles(),
        ]),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }

  Container gridViewTiles() {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(18, (index) {
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
    );
  }

  Container tabsWidget(String category) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(7)),
      child: Text(
        category,
        style: TextStyle(
            fontFamily: 'Sans-Serif',
            decorationStyle: TextDecorationStyle.dashed,
            fontSize: 14,
            color: Colors.white,
            decorationThickness: 6.9),
      ),
    );
  }
}
