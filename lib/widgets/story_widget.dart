import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String imageUrl;
  StoryWidget(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Row(
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
          width: 5,
        )
      ],
    );
  }
}
