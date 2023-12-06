import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/splash/presentaion/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: StyleColors.backgroundColor,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
            fontFamily: Stylefonts.primaryFont,
          ))),
      home: const SplashScreen(),
      routes: {'/home': (context) => const HomeScreen()},
    );
  }
}
