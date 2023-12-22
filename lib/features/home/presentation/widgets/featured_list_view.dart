import 'package:bookly_app/features/home/presentation/widgets/featured_listview_item.dart';
import 'package:flutter/material.dart';

class FeatuerdListView extends StatelessWidget {
  const FeatuerdListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.only(right: 16),
              child: FeaturedListViewItem(),
            )),
        itemCount: 10);
  }
}
