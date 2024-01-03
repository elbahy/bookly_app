import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/search/presentation/widgets/custom_search_textfield.dart';
import 'package:bookly_app/features/search/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomSearchTextField()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Text('Search Result', style: TextStyles.titleMedium),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SearchResultListView(),
          ],
        ),
      ),
    ));
  }
}
