import 'package:flutter/material.dart';

class StyleColors {
  static const Color backgroundColor = Color(0xFF100B20);
}

class Stylefonts {
  static const String primaryFont = 'roboto';
}

class TextStyles {
  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bookTitle =
      const TextStyle(fontSize: 24, overflow: TextOverflow.clip, height: 20);
}
