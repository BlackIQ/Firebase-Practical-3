import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController _loginEmail = TextEditingController();
    TextEditingController _loginPassword = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Manage accounts'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'john@due.com',
                  ),
                  controller: _loginEmail,
                  obscureText: false,
                ),
                SizedBox(height: 15),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: '********',
                  ),
                  controller: _loginPassword,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(FontAwesomeIcons.google),
                          Text('Continue with Google'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(FontAwesomeIcons.userSecret),
                          Text('Continue as guest user'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Text('Or'),
                ),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(FontAwesomeIcons.userPlus),
                          Text('Register with Email'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
