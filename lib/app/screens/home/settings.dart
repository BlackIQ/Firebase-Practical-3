import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multifirebaseauthentication/app/services/authentication.dart';
import 'package:multifirebaseauthentication/app/widgets/buttons/wide_icon_button.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            WideIconButton(
              color: Colors.red,
              clicked: () async {
                dynamic result = await _auth.signOut();
                if (result.runtimeType == List) {
                  print(result[1]);
                }
                else {
                  Navigator.of(context).pop(context);
                }
              },
              icon: FontAwesomeIcons.signOutAlt,
              text: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
