import 'package:flutter/material.dart';
import 'package:minimalecommerce/core/utils/app_styles.dart';
import 'package:minimalecommerce/views/widgets/category_item_list_view.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Michael',
          style: AppStyles.stylesSemiBold32,
        ),
        SizedBox(
          height: 16,
        ),
        CategoryItemListView(),
      ],
    );
  }
}
