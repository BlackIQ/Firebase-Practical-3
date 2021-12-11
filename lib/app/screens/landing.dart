import 'package:flutter/material.dart';
import 'package:multifirebaseauthentication/app/models/user.dart';
import 'package:multifirebaseauthentication/app/screens/account/account.dart';
import 'package:multifirebaseauthentication/app/screens/home/home.dart';
import 'package:provider/provider.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return user != null ? HomeScreen() : AccountScreen();
  }
}
