import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_action.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_details_bar.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_rating.dart';
import 'package:bookly_app/features/home/presentation/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                const CustomHomeDetailsBar(),
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/images/harry.png')),
                const SizedBox(height: 32),
                const Text('The Jungle Book',
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('Rudyard Kipling',
                    style: TextStyle(
                        fontSize: 21,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey)),
                const SizedBox(height: 15),
                const Rating(rating: 4.0, ratingCount: 2951),
                const SizedBox(height: 50),
                const CustomAction(),
              ]),
              const SizedBox(height: 45),
              const Text('Your can also like', style: TextStyles.titleMedium),
              const SizedBox(height: 15),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: const FeatuerdListView()),
            ],
          ),
        ),
      ),
    );
  }
}
