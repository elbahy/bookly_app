import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_book_details_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
          child: Column(children: [
            const CustomHomeDetailsBar(),
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/images/harry.png')),
            const SizedBox(height: 32),
            const Text('The Jungle Book',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Rudyard Kipling',
                style: TextStyle(
                    fontSize: 21,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey)),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18,
                ),
                const Text('4.8', style: TextStyle(fontSize: 18)),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const Text('(2390)',
                    style: TextStyle(fontSize: 18, color: Colors.grey)),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width * .75,
              height: MediaQuery.of(context).size.height * .06,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .375,
                    child: const Center(
                      child: Text('19.99 €',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .375,
                    height: MediaQuery.of(context).size.height * .06,
                    decoration: BoxDecoration(
                        color: Colors.amber[900],
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: const Center(
                      child:
                          Text('Free Preview', style: TextStyle(fontSize: 20)),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
