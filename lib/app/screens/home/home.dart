import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multifirebaseauthentication/app/models/user.dart';
import 'package:multifirebaseauthentication/app/screens/home/settings.dart';
import 'package:multifirebaseauthentication/app/screens/home/tabs/account.dart';
import 'package:multifirebaseauthentication/app/screens/home/tabs/feed.dart';
import 'package:multifirebaseauthentication/app/screens/home/tabs/add.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('Welcome back'),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ),
                  );
                },
                textColor: Colors.white,
                child: FaIcon(
                  FontAwesomeIcons.cog,
                  size: 17,
                  semanticLabel: 'Settings',
                ),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: FaIcon(FontAwesomeIcons.cloud),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: FaIcon(FontAwesomeIcons.plus),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: FaIcon(FontAwesomeIcons.userAlt),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FeedTab(),
              AddTab(),
              AccountTab(),
            ],
          ),
        ),
      ),
    );
  }
}
