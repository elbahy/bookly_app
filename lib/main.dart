import 'package:bookly_app/core/styles/colors.dart';
import 'package:bookly_app/features/splash/presentaion/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData()
          .copyWith(scaffoldBackgroundColor: StyleColors.backgroundColor),
      home: const SplashScreen(),
    );
  }
}
