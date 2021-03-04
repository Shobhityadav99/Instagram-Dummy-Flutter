import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String imageUrl;
  final String userName;
  StoryWidget(this.imageUrl, this.userName);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.pink,
                ),
              ),
            ),
            SizedBox(
              width: 55,
              child: Text(
                userName,
                softWrap: true,
                textWidthBasis: TextWidthBasis.parent,
                textScaleFactor: 0.8,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
