import 'package:flutter/material.dart';

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
              post['title'],
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 17,
              ),
            ),
            Divider(color: Colors.deepOrange),
            Text(
              post['context'],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${post['userid']}',
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
