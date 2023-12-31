import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_home_bar.dart';
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
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: CustomHomeBar()),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: const FeatuerdListView(),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 48)),
              const SliverToBoxAdapter(
                child: Text(
                  'Best Seller',
                  style: TextStyles.titleMedium,
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              const BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}
