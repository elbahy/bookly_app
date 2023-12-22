import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_bar.dart';
import 'package:bookly_app/features/home/presentation/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBar(),
              const SizedBox(height: 32),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: const FeatuerdListView(),
              ),
              const SizedBox(height: 48),
              const Text(
                'Best Seller',
                style: TextStyles.titleMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
