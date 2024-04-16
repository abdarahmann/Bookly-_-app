import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';
import 'book_action_button.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';


class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
       double width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
          Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .2,
                  ),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 38,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ButtonAction(),
                ),
      ],
    );
  }
}