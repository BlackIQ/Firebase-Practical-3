import 'package:flutter/material.dart';

class WideField extends StatelessWidget {
  WideField({
    this.label,
    this.hint,
    this.controller,
    this.obsecure,
  });

  final label;
  final hint;
  final controller;
  final obsecure;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
