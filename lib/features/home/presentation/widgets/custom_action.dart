import 'package:bookly_app/features/home/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomAction extends StatelessWidget {
  const CustomAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: '19.99 €',
          onPressed: () {},
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        CustomButton(
            text: 'Free Preview',
            onPressed: () {},
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            backgroundColor: const Color(0xffef8262),
            foregroundColor: Colors.white),
      ],
    );
  }
}
