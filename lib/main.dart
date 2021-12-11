import 'package:flutter/material.dart';
import 'package:multifirebaseauthentication/app/screens/landing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Firebase Authentication',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Landing(),
    );
  }
}
