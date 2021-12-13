import 'package:flutter/material.dart';
import 'package:multifirebaseauthentication/app/widgets/buttons/wide_button.dart';
import 'package:multifirebaseauthentication/app/widgets/fields/wide_field.dart';

class AddTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _title = TextEditingController();
    TextEditingController _content = TextEditingController();

    return SingleChildScrollView(
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          WideField(
            controller: _content,
            hint: 'Write your post content',
            label: 'Post',
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
