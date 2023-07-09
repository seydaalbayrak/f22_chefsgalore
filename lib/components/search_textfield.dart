import 'package:flutter/material.dart';

import 'app_style.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Tarif ara",
          hintStyle: const TextStyle(color: sGray4),
          filled: false,
          prefixIconColor: sGray4,
          prefixIcon: const Icon(Icons.search_outlined),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(sBorderRadius),
              borderSide: const BorderSide(width: 1, color: sGray4))),
    );
  }
}
