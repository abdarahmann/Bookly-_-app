import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 45,
          ),
          Row(
            children: [
              Text(
                'Best Seller',
                style: Styles.textStyle20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

