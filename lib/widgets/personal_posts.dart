import 'package:flutter/material.dart';

class PersonalPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(12, (index) {
          return Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                )),
          );
        }));
  }
}
