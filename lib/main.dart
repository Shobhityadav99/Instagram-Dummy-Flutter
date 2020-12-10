import 'package:flutter/material.dart';
import 'package:insta_dummy/widgets/post_widget.dart';
import './widgets/story_widget.dart';
import 'widgets/bottom_nav_widget.dart';
import './screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Billabong',
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          textTheme: ThemeData.light()
              .textTheme
              .copyWith(title: TextStyle(fontFamily: 'Billabong'))),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List username = [
    'Golu_Kumar',
    'Aar_Zoo',
    'Simdarth_Saand',
    'Anmol_Singh',
    'Chingla_Avishi',
    'Ganjedi_Priyanka',
    'Zoo_Zoo',
    'Padhu_Man',
    'Mishchay',
    'Somal',
    'Ambhishek',
    'Kammo',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Instagarm',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 36,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
        backgroundColor: Colors.black,
        bottomOpacity: 0.2,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: username.length,
                itemBuilder: (context, index) => StoryWidget(username[index]),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
                color: Colors.grey,
                height: 1,
                width: MediaQuery.of(context).size.width),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (ctx, index) => Post(username[index]),
              itemCount: username.length,
            ),
          ),
          Container(
            child: BottomNav(),
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
