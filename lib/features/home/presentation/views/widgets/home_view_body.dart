import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        ListViewItem()
      ],
    );
  }
}

