import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenSinglePost extends StatelessWidget {
  ScreenSinglePost({
    this.post,
  });

  final post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              post['context'],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${post['username']}',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 10,
                  ),
                ),
                Text(
                  '${post['date']}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: FaIcon(
                    FontAwesomeIcons.solidHeart,
                    // FontAwesomeIcons.heart,
                    size: 15,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      elevation: 1,
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
    );
  }
}
