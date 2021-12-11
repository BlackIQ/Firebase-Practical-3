import 'package:flutter/material.dart';
import 'package:multifirebaseauthentication/app/models/user.dart';
import 'package:multifirebaseauthentication/app/screens/landing.dart';
import 'package:multifirebaseauthentication/app/services/authentication.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Multi Firebase Authentication',
          theme: ThemeData(
            primarySwatch: Colors.deepOrange,
          ),
          home: Landing(),
        );
      }
    );
  }
}
