import 'package:flutter/material.dart';
import 'package:multifirebaseauthentication/app/services/database.dart';
import 'package:multifirebaseauthentication/app/widgets/posts/screen_post.dart';

class FeedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: StreamBuilder(
            stream: postsCollection,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ScreenSinglePost(
                      post: snapshot.data.documents[index],
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
