import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multifirebaseauthentication/app/widgets/buttons/icon_button.dart';
import 'package:multifirebaseauthentication/app/widgets/buttons/wide_button.dart';
import 'package:multifirebaseauthentication/app/widgets/fields/wide_field.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _loginEmail = TextEditingController();
    TextEditingController _loginPassword = TextEditingController();

    void Register() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  WideField(
                    controller: _loginEmail,
                    label: 'Email',
                    hint: 'john@due.com',
                    obsecure: true,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  WideField(
                    controller: _loginPassword,
                    label: 'Password',
                    hint: '********',
                    obsecure: true,
                  ),
                  SizedBox(height: 20),
                  WideButton(
                    clicked: () {},
                    color: Colors.deepOrange,
                    text: 'Login',
                  ),
                ],
              ),
            ),
          );
        }
      );
    }

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
                WideField(
                  controller: _loginEmail,
                  label: 'Email',
                  hint: 'john@due.com',
                  obsecure: true,
                ),
                SizedBox(height: 15),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                WideField(
                  controller: _loginPassword,
                  label: 'Password',
                  hint: '********',
                  obsecure: true,
                ),
                SizedBox(height: 20),
                WideButton(
                  clicked: () {},
                  color: Colors.deepOrange,
                  text: 'Login',
                ),
                SizedBox(height: 30),
                Center(
                  child: Text('Or login with other accounts'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SqIconButton(
                      icon: FontAwesomeIcons.google,
                      color: Colors.red,
                      clicked: () {},
                    ),
                    SqIconButton(
                      icon: FontAwesomeIcons.userSecret,
                      color: Colors.grey,
                      clicked: () {},
                    ),
                    SqIconButton(
                      icon: FontAwesomeIcons.userPlus,
                      color: Colors.green,
                      clicked: () {
                        Register();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
