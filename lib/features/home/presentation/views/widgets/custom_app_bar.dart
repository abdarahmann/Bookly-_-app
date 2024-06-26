import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.kLogo,
            height: 24,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearcView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
