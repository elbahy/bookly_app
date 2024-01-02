import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.borderRadius,
    required this.text,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
    super.key,
  });
  final BorderRadiusGeometry borderRadius;
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          fixedSize: const Size(150, 50)),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
