import 'package:flutter/material.dart';

class WideField extends StatelessWidget {
  WideField({
    this.label,
    this.hint,
    this.controller,
    this.obsecure,
    this.lines,
  });

  final label;
  final hint;
  final controller;
  final obsecure;
  final lines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: lines,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        hintText: hint,
      ),
      controller: controller,
      obscureText: obsecure,
    );
  }
}
