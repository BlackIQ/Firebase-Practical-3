import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multifirebaseauthentication/app/models/user.dart';
import 'package:multifirebaseauthentication/app/widgets/posts/screen_post.dart';
import 'package:provider/provider.dart';

class FeedTab extends StatelessWidget {
  List<Map> x = [
    {
      'title': 'Firebase',
      'content': 'I love authentication with firebase',
      'user': 'Amir',
      'date': 'Dec 12 2021',
    },
    {
      'title': 'Firestore',
      'content': 'I really love cloud computing',
      'user': 'Mahdi',
      'date': 'Dec 10 11:57',
    },
    {
      'title': 'Storage',
      'content': 'Does anyone use Firebase Cloud Storage? I have some throubles with it.',
      'user': 'Ali',
      'date': 'Dec 11 2021',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: x.length,
            itemBuilder: (context, index) {
              return ScreenSinglePost(post: x[index]);
            },
          ),
        ),
      ],
    );
  }
}
