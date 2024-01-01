import 'package:bookly_app/core/app_router.dart';
import 'package:bookly_app/core/constants.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: StyleColors.backgroundColor,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
            fontFamily: Stylefonts.primaryFont,
          ))),
      routerConfig: AppRouter.router,
    );
  }
}
