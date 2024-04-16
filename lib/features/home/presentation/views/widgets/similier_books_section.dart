
import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';
import 'similer_books_list_view .dart';

class SimilierBooksSection extends StatelessWidget {
  const SimilierBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
                        Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SimilerBooksListView()
      ],
    );
  }
}