import 'package:flutter/material.dart';

import '../app_style.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: sGray4),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: sGray4),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: sWhite,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: sGray4)
            ),
      ),
    );
  }
}
