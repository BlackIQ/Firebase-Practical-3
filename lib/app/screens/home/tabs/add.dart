import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multifirebaseauthentication/app/models/user.dart';
import 'package:multifirebaseauthentication/app/services/database.dart';
import 'package:multifirebaseauthentication/app/widgets/buttons/wide_button.dart';
import 'package:multifirebaseauthentication/app/widgets/fields/wide_field.dart';
import 'package:multifirebaseauthentication/app/widgets/posts/screen_post.dart';
import 'package:provider/provider.dart';

class AddTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _title = TextEditingController();
    TextEditingController _content = TextEditingController();

    final User user = Provider.of<User>(context);
    return SingleChildScrollView(
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          WideField(
            lines: 1,
            controller: _title,
            hint: 'Title of the post',
            label: 'Title',
            obsecure: false,
          ),
          SizedBox(height: 10),
          WideField(
            lines: 5,
            controller: _content,
            hint: 'Write your post content',
            label: 'Text',
            obsecure: false,
          ),
          SizedBox(height: 10),
          WideButton(
            clicked: () {},
            color: Colors.deepOrange,
            text: 'Publish',
          ),
        ],
      ),
    );
  }
}
