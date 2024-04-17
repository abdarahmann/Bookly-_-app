import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Search result',
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Opacity(
            opacity: 0.5,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
            ),
          ),
          enabledBorder: inputBorder(),
          focusedBorder: inputBorder()),
    );
  }

  OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(15));
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: BestSellerListViewItem(),
          );
        });
  }
}
