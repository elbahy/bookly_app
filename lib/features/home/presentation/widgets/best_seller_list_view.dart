import 'package:bookly_app/features/home/presentation/widgets/book_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const BookListItem();
      },
      itemCount: 10,
    );
  }
}
