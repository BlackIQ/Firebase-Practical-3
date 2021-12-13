import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthIconButton extends StatelessWidget {
  AuthIconButton({
    this.text,
    this.icon,
    this.color,
    this.clicked,
  });

  final text;
  final icon;
  final color;
  final clicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
      ),
      height: 50,
      child: RaisedButton(
        textColor: color,
        color: Colors.white,
        onPressed: clicked,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(icon),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
