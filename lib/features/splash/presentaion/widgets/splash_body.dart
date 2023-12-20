import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/features/home/presentation/screens/home_screen.dart';
import 'package:bookly_app/features/splash/presentaion/widgets/slider_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    sliderAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: const Offset(0, 0))
            .animate(animationController);

    animationController.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HomeScreen(), transition: Transition.leftToRight);
    });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedBuilder(
            animation: sliderAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: sliderAnimation,
                child:
                    const Text('Read Free Books', textAlign: TextAlign.center),
              );
            })
      ],
    );
  }
}
