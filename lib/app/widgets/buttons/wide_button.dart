import 'package:flutter/material.dart';

class WideButton extends StatelessWidget {
  WideButton({
    this.text,
    this.color,
    this.clicked,
  });

  final text;
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
          child: Text(text),
        ),
      ),
    );
  }
}
