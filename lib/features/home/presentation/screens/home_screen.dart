import 'package:bookly_app/features/home/presentation/widgets/custom_bar.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_listview_item.dart';
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
            children: [
              const CustomBar(),
              const SizedBox(height: 32),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: CustomListViewItem(),
                        )),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
