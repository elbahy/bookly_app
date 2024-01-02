import 'package:bookly_app/core/assets.dart';
import 'package:flutter/material.dart';

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
          onPressed: () {},
          icon: const Icon(Icons.search),
          iconSize: 32,
        )
      ],
    );
  }
}
