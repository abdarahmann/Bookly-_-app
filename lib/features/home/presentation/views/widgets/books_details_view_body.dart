import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similier_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
 
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                 CustomBookDetailsAppBar(),
                 SizedBox(
                  height: 30,
                ),
                BooksDetailsSection(),
                  Expanded(
                   child: SizedBox(
                    height: 35,
                  ),
                 ),
                 SimilierBooksSection(),

              ],
            ),
          ),
        )
      ],
    );
  }
}

