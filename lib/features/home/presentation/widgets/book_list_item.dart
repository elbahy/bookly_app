import 'package:bookly_app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/book_details');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/harry.png',
                height: 114,
              ),
            ),
            const SizedBox(width: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * .55,
              height: 114,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    style: TextStyles.bookTitle,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 3),
                  Text('J.K, Rowling', style: TextStyles.writerName),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text('19.99 €', style: TextStyles.bookTitle),
                      const Spacer(),
                      const Icon(Icons.star, color: Colors.yellow),
                      Text('4.8', style: TextStyles.bookTitle),
                      Text('(2390)', style: TextStyles.writerName)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
