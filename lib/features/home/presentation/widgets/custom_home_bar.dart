import 'package:bookly_app/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomHomeBar extends StatelessWidget {
  const CustomHomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 25,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push('/search');
          },
          icon: const Icon(Icons.search),
          iconSize: 32,
        )
      ],
    );
  }
}
