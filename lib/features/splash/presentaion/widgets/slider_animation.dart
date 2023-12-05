import 'package:flutter/material.dart';

class slideAnimation extends StatelessWidget {
  const slideAnimation({
    super.key,
    required this.sliderAnimation,
  });

  final Animation<Offset> sliderAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: sliderAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: sliderAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
