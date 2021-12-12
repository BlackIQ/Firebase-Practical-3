import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multifirebaseauthentication/app/screens/home/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('Home screen'),
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
                  child: FaIcon(FontAwesomeIcons.chartLine),
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
              Center(
                child: Text('Coffee'),
              ),
              Center(
                child: Text('Plus'),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey,
                            // backgroundImage: NetworkImage(),
                            child: FaIcon(
                              FontAwesomeIcons.camera,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Amirhossein',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'amir@gmail.com',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Joined in Dec 12 2021',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.blue),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
