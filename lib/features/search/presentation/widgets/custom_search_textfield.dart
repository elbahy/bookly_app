import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });
  final InputBorder customBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.white, width: 1));
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
        enabledBorder: customBorder,
        focusedBorder: customBorder,
      ),
    );
  }
}
