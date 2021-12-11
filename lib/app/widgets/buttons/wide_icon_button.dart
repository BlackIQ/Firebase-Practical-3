import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WideIconButton extends StatelessWidget {
  WideIconButton({
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
      height: 50,
      child: RaisedButton(
        textColor: Colors.white,
        color: color,
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
