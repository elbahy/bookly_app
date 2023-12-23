import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/harry.png',
            height: 140,
          ),
        ),
        const SizedBox(width: 30),
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                style: TextStyles.bookTitle,
              ),
              Text('J.K, Rowling', style: TextStyles.writerName),
              Row(
                children: [
                  Text(
                    r'19.99 $',
                    style: TextStyles.bookTitle,
                  ),
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
    );
  }
}
