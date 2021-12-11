import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SqIconButton extends StatelessWidget {
  SqIconButton({
    this.icon,
    this.color,
    this.clicked,
  });

  final icon;
  final color;
  final clicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: RaisedButton(
          textColor: Colors.white,
          color: color,
          onPressed: clicked,
          child: Center(
            child: FaIcon(icon),
          ),
        ),
      ),
    );
  }
}
