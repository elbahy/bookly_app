import 'package:flutter/material.dart';

class CustomHomeDetailsBar extends StatelessWidget {
  const CustomHomeDetailsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close, size: 32)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, size: 32))
      ],
    );
  }
}
